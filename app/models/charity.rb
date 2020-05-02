class Charity < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :charity_issues
  has_many :donations
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  has_one_attached :photo
end
