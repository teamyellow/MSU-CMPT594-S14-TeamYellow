require 'spec_helper'

describe Cookbook do
   it "has many comments" do
    cookbook1 = Cookbook.create(:title => "cookbook1")
    comment1 = Comment.create(:body => "xyz", :author => "newbie")
    comment2 = Comment.create(:body => "gjh", :author => "newbie")
    expect(cookbook1.comments).to be_an Array
  end
end
