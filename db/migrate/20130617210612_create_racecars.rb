class CreateRacecars < ActiveRecord::Migration
  def change
    create_table :racecars do |t|
      t.string :color, null: false
      t.string :name, null: false
      t.integer :crash_test_rating, null: false
      t.integer :top_speed, null: false

      t.timestamps
    end
  end
end
