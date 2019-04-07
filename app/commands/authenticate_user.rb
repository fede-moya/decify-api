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
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  def user
    user = User.find_by_email(email)
    return user if user&.authenticate(password) || code.present? && user&.authorization_code.eql?(code)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
