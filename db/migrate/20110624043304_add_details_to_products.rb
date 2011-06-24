class AddDetailsToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :part_number, :string
    add_column :products, :price, :decimal
  end

  def self.down
    remove_column :products, :price
    remove_column :products, :part_number
  end
end
