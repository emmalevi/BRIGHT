class Issue < ApplicationRecord
  geocoded_by :location
  # has_many: charities
  after_validation :geocode, if: :will_save_change_to_location?
end
