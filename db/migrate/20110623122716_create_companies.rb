class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :AnimatorName
      t.integer :Age
      t.integer :salary
      t.date :DOB
      t.text :animation

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
