class Usuario < ApplicationRecord
    has_many :posts

    validates :nombre, presence: true
    before_create -> { self.token = generate_token }

    private
    def generate_token
        loop do
            token = SecureRandom.hex
            return token unless Usuario.exists?({token: token})
        end
    end
end