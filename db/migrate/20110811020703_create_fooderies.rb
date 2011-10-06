class CreateFooderies < ActiveRecord::Migration
  def self.up
    create_table :fooderies do |t|
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :fooderies
  end
end
