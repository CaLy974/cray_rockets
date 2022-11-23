class Rocket < ApplicationRecord
  belongs_to :user
  validates :name, :town, :capacity, :price, presence: true # :country à ajouter
end
