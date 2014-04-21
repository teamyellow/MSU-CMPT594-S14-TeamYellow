class CreateCookbooks < ActiveRecord::Migration
  def change
    create_table "cookbooks" do |t|
      t.string :title
      t.integer :servings
      t.integer :preptime
      t.integer :cooktime
      t.string :ingredients
      t.string :directions

      t.timestamps
    end
  end
end
