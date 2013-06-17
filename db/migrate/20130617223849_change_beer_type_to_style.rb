class ChangeBeerTypeToStyle < ActiveRecord::Migration
  def up
    change_table :beers do |t|
      t.rename :type, :style
    end
  end

  def down
    change_table :beers do |t|
      t.rename :style, :type
    end
  end
end
