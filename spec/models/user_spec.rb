require 'spec_helper'

describe User do
   it "has a firstname" do
    user = User.new(:first_name => "new")
    expect(user.first_name).to eq "new"
  end
  it "has a lastname" do
    user = User.new(:last_name => "bie")
    expect(user.last_name).to eq "bie"
  end
  it "has a username" do
    user = User.new(:username => "newbie")
    expect(user.username).to eq "newbie"
  end
  it "has an email" do
    user = User.new(:email => "newbie@xyz.com")
    expect(user.email).to eq "newbie@xyz.com"
  end
  it "has a password" do
     user = User.new(:password => "newbie")
     expect(user.password).to eq "newbie"
  end
  it "has many cookbooks" do
     user = User.create(:first_name => "new", :last_name => "bie", :username => "newbie", :email => "newbie@xyz.com", :password => "newbie") 
     cookbook1 = Cookbook.create(:title => "cookbook1", :author => "newbie", :servings => "2", :user_id => "1")
     cookbook2 = Cookbook.create(:title => "cookbook2", :author => "newbie", :servings => "2", :user_id => "1")
     expect(user.cookbooks).to be_an Array
     expect(user.cookbooks.size).to eq 2
     expect(user.cookbooks).to include cookbook1
     expect(user.cookbooks).to include cookbook2
  end
end
