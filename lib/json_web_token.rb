class JsonWebToken
  class << self
    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS384')
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS384')[0]
      HashWithIndifferentAccess.new body
    end
  end
end
