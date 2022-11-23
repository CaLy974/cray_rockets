class Rocket < ApplicationRecord
  belongs_to :user
  validates :name, :price, :localisation, presence: true
end
