class Post < ApplicationRecord
  belongs_to :usuario

  validates :titulo, presence: true
  validates :cuerpo, presence: true
end