class Cookbook < ActiveRecord::Base
belongs_to:user
attr_accessible :title, :author, :servings, :preptime, :cooktime, :ingredients, :directions, :user_id
end
