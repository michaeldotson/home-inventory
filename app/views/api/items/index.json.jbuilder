json.array! @items.each do |item|
  json.partial! "item.json.jbuilder", item: item  
end