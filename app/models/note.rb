class Note < ActiveRecord::Base
	has_and_belongs_to_many :beacons, :join_table => "beacon_notes", :foreign_key => "beaconNote_id"
end
