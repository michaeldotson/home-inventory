json.array! @locations.each do |location|
  json.partial! "location.json.jbuilder", location: location
end