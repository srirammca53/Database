class AddPartNumberToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :part_number, :string
  end

  def self.down
    remove_column :products, :part_number
  end
end
