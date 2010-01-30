class AddDefaultValuesToWords < ActiveRecord::Migration
  def self.up
    change_table :words do |t|
      t.change_default(:hits, 0)
      t.change_default(:misses, 0)
    end
  end

  def self.down
    change_table :words do |t|
      t.change_default(:hits, nil)
      t.change_default(:misses, nil)
    end
  end
end
