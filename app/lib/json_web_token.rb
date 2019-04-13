class JsonWebToken
  TOKEN_EXPIRATION_TIME = (365 * 24).hours.from_now
  class << self
    def encode(payload, exp = TOKEN_EXPIRATION_TIME)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue StandardError
      nil
    end
  end
end
