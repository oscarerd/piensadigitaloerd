class Usuario < ApplicationRecord
    has_many :posts

    validates :nombre, presence: true
end
