module CookbooksHelper
  def split_ingredients(cookbook)
    ingredients = cookbook.ingredients.split(",")
  end
end
