# frozen_string_literal: true

class AuthenticateUser
  prepend SimpleCommand

  attr_accessor :email, :password, :code

  def initialize(email, password, code)
    @email = email
    @password = password
    @code = code
  end

  def call
    puts 'call service'
    u = user
    return JsonWebToken.encode(user_id: u.id) if u.present?
    false
  end

  private

  def user
    user = User.find_by(email: email)

    if code.present?
      if user&.authorization_code.eql?(code)
        user.update(authorization_code: nil)
        return user
      end
    end

    if password.present?
      return user if user&.authenticate(password)
    end

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
