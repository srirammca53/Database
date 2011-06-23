class RemovePartNumberFromcompany < ActiveRecord::Migration
  def self.up
remove_column :company, :rating
  end

  def self.down
add_column :company, :rating, :integer
  end
end
