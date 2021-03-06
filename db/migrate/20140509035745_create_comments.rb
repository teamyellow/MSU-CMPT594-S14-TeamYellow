class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :cookbook
      t.text :body
      t.text :author

      t.timestamps
    end
    add_index :comments, :cookbook_id
  end
end
