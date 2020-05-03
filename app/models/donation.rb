class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  monetize :amount_cents
end
