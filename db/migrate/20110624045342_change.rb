class Change < ActiveRecord::Migration
  def self.up

   change_column :name, :string
end

  def self.down
  end
end
