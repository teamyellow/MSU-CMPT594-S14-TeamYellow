class CreateUsers < ActiveRecord::Migration
  def up
      create_table 'users' do |t|
      t.string 'first_name'
      t.string 'last_name'
      t.string 'username'
      t.string 'email'
      t.string 'password'
     
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
  drop_table 'users' # deletes the whole table and all its data!
  end
end
