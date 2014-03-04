json.array! @beacon do |beacon|
  json.id beacon.id
  json.name beacon.title
  json.image beacon.image
  json.thumbImage beacon.thumbImage
  json.beaconDesc beacon.beaconDesc
  json.children beacon.childBeacons do |child|
  	json.id child.id
  	json.title child.title
  	json.image child.image
  	json.thumbImage child.thumbImage
  	json.beaconDesc child.beaconDesc
  	json.notes child.notes do |note|
  		json.id note.id
  	end
  end
end