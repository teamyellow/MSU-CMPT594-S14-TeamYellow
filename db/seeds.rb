cookbook_list = [
  [ 1, "soup" ],
  [ 2, "chicken" ],
  [ 3, "beef" ],
]

cookbook_list.each do |id, title|
  Cookbook.create( recipe_id: id, recipe_title: title )
end
