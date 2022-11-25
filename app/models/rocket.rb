class Rocket < ApplicationRecord
  belongs_to :user
  validates :name, :town, :capacity, :price, presence: true # :country à ajouter
  has_one_attached :photo
  has_many :books
  geocoded_by :town
  after_validation :geocode, if: :will_save_change_to_town?
end
