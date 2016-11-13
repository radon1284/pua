class CustomerDb < ApplicationRecord

	geocoded_by :location
	after_validation :geocode, if: ->(obj){ obj.location.present? and obj.location_changed? }
	
end
