class Rocket < ApplicationRecord
  belongs_to :user
  validates :name, :town, :capacity, :price, presence: true # :country à ajouter
  has_one_attached :photo
  has_many :books
end
