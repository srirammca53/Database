class RemovePartNumberFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :id
  end

  def self.down
    add_column :products, :id, :integer
  end
end
