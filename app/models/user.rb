class User < ActiveRecord::Base
has_many:cookbooks
 attr_accessible :first_name, :last_name, :username, :email,:password
 EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
validates :first_name, :presence => true
validates :last_name, :presence => true
validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
#validates :password :confirmation => true password_confirmation attr
validates :password, :presence => true
validates_length_of :password, :in => 6..20
end
