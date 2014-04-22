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

When /^I edit the data$/ do 
   fill_in "First name", :with => 'krupa'
   fill_in "Last name", :with => 'Patel'
   fill_in "Username", :with => 'krupapatel'
   fill_in "Email", :with => 'krupa@gmail.com'
end
