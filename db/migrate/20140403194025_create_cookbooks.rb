class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table :cookbooks do |t|
      t.integer :recipe_id
      t.string :recipe_title

      t.timestamps
    end
  end
end
