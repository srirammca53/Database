class Datachange < ActiveRecord::Migration
  def self.up
   execute "alter table products change description description varchar(150);"
  end

  def self.down
  end
end
