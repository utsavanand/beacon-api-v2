class Beacon < ActiveRecord::Base
	belongs_to :brand
	has_and_belongs_to_many :notes, :join_table => "beacon_notes", :association_foreign_key => "beaconNote_id"
	has_many :childBeacons, class_name: "Beacon", foreign_key: "parentBeacon_id"
	belongs_to :parentBeacon, class_name: "Beacon", foreign_key: "parentBeacon_id"
end
