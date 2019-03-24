json.partial! "location.json.jbuilder", location: @location

json.items do
  json.array! @location.items, partial: "api/items/item", as: :item  
end
