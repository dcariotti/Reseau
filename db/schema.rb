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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170625094445) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "author_id", null: false
    t.string "author_ip", limit: 30, null: false
    t.integer "post_id", null: false
    t.text "blocktext", null: false
    t.boolean "active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loves", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.boolean "post"
    t.integer "postID"
    t.integer "commentID"
    t.integer "author_id", null: false
    t.string "author_ip", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "titolo", limit: 50, null: false
    t.integer "author", null: false
    t.string "author_ip", limit: 30, null: false
    t.integer "category", null: false
    t.text "blocktext", null: false
    t.boolean "active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "word", limit: 10, null: false
    t.boolean "post"
    t.integer "postID"
    t.integer "commentID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "username", limit: 15, null: false
    t.string "password", limit: 60, null: false
    t.string "email", limit: 30
    t.integer "rank"
    t.string "reg_ip", limit: 30, null: false
    t.string "last_ip", limit: 30, null: false
    t.string "startcode", limit: 60, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
