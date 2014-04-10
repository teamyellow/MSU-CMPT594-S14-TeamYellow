Given /^a valid user$/ do
  @user = User.create!({
  			 :first_name => "Kermit",
  			 :last_name => "TheFrog",
  			 :username => "minikermit",
             :email => "minikermit@hotmail.com",
             :password => "12345678"
             #:password_confirmation => "12345678"
           })
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit '/'
  fill_in "username", :with => "minikermit"
  fill_in "pwd", :with => "12345678"
  click_button "Login"
end