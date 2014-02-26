class Brand < ActiveRecord::Base
	has_many :beacons
	has_many :feedbacks
	has_many :expressions
end
