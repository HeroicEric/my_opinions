class ChangeLikeRacecarIdToLikeableId < ActiveRecord::Migration
  def up
    change_table :likes do |t|
      t.rename :racecar_id, :likeable_id
    end
  end

  def down
    change_table :likes do |t|
      t.rename :likeable_id, :racecar_id
    end
  end
end
