class Changetoproducts < ActiveRecord::Migration
  def self.up
 change_table :products do |t|
      t.change :description, :text
  end
end

  def self.down
change_table :products do |t|
      t.change :description, :varchar
end
  end
end
