class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :price, null: false
      t.string :type, null: false
      t.float :abv, null: false

      t.timestamps
    end
  end
end
