class JobOrder < ApplicationRecord

	geocoded_by :customer_location
	after_validation :geocode, if: ->(obj){ obj.customer_location.present? and obj.customer_location_changed? }
	
end
