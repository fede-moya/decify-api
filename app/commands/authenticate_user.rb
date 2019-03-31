class AuthenticateUser
  prepend SimpleCommand

  def initialize(email, password, code)
    @email = email
    @password = password
    @code = code
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user&.authenticate(password) || user&.authorization_code.eql?(code)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end