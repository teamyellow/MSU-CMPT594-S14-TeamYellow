class Cookbook < ActiveRecord::Base
  attr_accessible :title, :servings, :preptime, :cooktime, :ingredients, :directions
end
