class CharityIssue < ApplicationRecord
  belongs_to :issue
  belongs_to :charity
end
