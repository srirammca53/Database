class Mychange < ActiveRecord::Migration
  def self.up
execute "ALTER TABLE products add primary key (name);"
  end

  def self.down
  end
end
