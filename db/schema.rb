# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110624054933) do

  create_table "animations", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "AnimatorName"
    t.integer  "Age"
    t.integer  "salary"
    t.date     "DOB"
    t.text     "animation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :primary_key => "name", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "part_number"
    t.decimal  "price",       :precision => 10, :scale => 0
  end

  create_table "test", :id => false, :force => true do |t|
    t.integer "id",                 :default => 0, :null => false
    t.string  "name", :limit => 20
  end

end
