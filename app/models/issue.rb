class Issue < ApplicationRecord
  geocoded_by :location
  # has_many: charities
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :charity_issues
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  has_one_attached :photo
end
