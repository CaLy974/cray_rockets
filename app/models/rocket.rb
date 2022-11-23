class Rocket < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  validates :name, :price, :localisation, presence: true
=======
  validates :name, :town, :capacity, :price, presence: true # :country à ajouter
>>>>>>> master
end
