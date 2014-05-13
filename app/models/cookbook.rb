class Cookbook < ActiveRecord::Base
belongs_to:user
has_many :comments
attr_accessible :title, :author, :servings, :preptime, :cooktime, :ingredients, :directions, :user_id

   def self.search(search)
    if search
     find(:all, :conditions => ['ingredients LIKE ?', "%#{search}%"])
    else
     find(:all)
    end
   end  
   
end
