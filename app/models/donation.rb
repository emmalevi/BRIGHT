class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  belongs_to :order
  validates :amount, presence: true
end
