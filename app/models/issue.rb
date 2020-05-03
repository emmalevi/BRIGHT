class Issue < ApplicationRecord
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :charity_issues
  has_many :charities, through: :charity_issues
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
