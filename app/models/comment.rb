class Comment < ActiveRecord::Base
  belongs_to :cookbook
  belongs_to :user
  attr_accessible :body, :author
end
