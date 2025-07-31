# app/views/artist_sets/_artist_set.json.jbuilder
json.array! @artist_sets do |artist_set|
  json.id artist_set.id
  json.set_list_name artist_set.set_list_name
  json.name artist_set.set_list_name
end