class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :language 
      t.string :origin
      t.string :translation
      t.integer :hits 
      t.integer :misses
      t.timestamps
    end
  end
  
  def self.down
    drop_table :words
  end
end
