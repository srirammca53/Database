class CreateAnimations < ActiveRecord::Migration
  def self.up
    create_table :animations do |t|
      t.string :name
      t.integer :age
      t.integer :salary

      t.timestamps
    end
  end

  def self.down
    drop_table :animations
  end
end
