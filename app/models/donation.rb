class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  belongs_to :issue
  monetize :amount_cents
end
