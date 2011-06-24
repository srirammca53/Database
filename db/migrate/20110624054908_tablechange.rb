class Tablechange < ActiveRecord::Migration
  def self.up
change table :products do |t|
t.string :rating
t.index :rating
end
  end

  def self.down
  end
end
