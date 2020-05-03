class Charity < ApplicationRecord
  has_many :charity_issues
  has_many :issues, through: :charity_issues
  has_many :donations
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :rating, presence: true

  has_one_attached :photo
end
