
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
  fill_in "password", :with => "12345678"
  click_button "Login"
end

When /^I edit the data$/ do 
   fill_in "First name", :with => 'krupa'
   fill_in "Last name", :with => 'Patel'
   fill_in "Username", :with => 'krupapatel'
   fill_in "Email", :with => 'krupa@gmail.com'
end

When /^I add a new cookbook$/ do
   fill_in "Title", :with => 'Oatmeal'
   fill_in "Servings", :with => '2'
   fill_in "Preptime", :with => '10 minutes'
   fill_in "Cooktime", :with =>'5 minutes'
   fill_in "Ingredients", :with => 'Instant oats'
   fill_in "Directions", :with => 'Cook it'
end
