require 'spec_helper'

describe UsersController do
describe "creating user" do
     it 'should call the model method that performs create user' do
        get :create, {:first_name => 'krupa', :last_name =>'patel', :username => 'krupapatel', :email => 'krupa@gmail.com', :password => 'krupa1'} 
     
     end
   end
   describe "POST create" do
      context "with valid attributes" do
         it "creates a new user" do
         expect{
             post :create, user: Factory.attributes_for(:user)
         }
        end
      end
      context "with invalid attributes" do
         it "does not save the new user" do
         expect{
             post:create, user: Factory.attributes_for(:invalid_user)
         }
        end
     end
   end
   describe "GET edit" do
      before do
         @user = mock(:user)
         @mappings = [mock(:mapping)]
         @user.stub!(:mappings).and_return(@mappings)
         User.stub!(:get).and_return(@user)
      end
      def do_request
         dispatch_to(Users, :edit, :id => 1) do |controller|
            controller.stub!(:ensure_authenticated)
            controller.stub!(:ensure_admin)
            controller.stub!(:render)
         end
      end
   end
   describe "PUT update(with valid user)" do
      before do
           @attrs = {'login' => 'krupa'}
           @user = mock(:user, :update_attributes =>true)
           User.stub!(:get).and_return(@user)
      end
     def do_request
           dispatch_to(Users, :update, :id =>1) do |controller|
               controller.stub!(:ensuer_authenticated)
               controller.stub!(:ensure_admin)
               controller.stub!(:render)
           end
     end
   end
end
