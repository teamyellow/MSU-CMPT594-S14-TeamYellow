class Cookbook < ActiveRecord::Base
  attr_accessible :title, :author, :servings, :preptime, :cooktime, :ingredients, :directions
end
