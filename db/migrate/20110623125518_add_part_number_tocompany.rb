class AddPartNumberTocompany < ActiveRecord::Migration
  def self.up
add_column :company, :rating, :integer
add_index :company, [:id, :AnimatorName]

  end

  def self.down
remove_column :company, :rating
  end
end
