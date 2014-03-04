class Note < ActiveRecord::Base
	has_and_belongs_to_many :beacons, join_table: "beacons_notes"
	accepts_nested_attributes_for :beacons
end
