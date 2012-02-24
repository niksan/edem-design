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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20111207072817) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20111121060826) do
=======
ActiveRecord::Schema.define(:version => 20111106153022) do
>>>>>>> 8f213ae95b7cff23c8fe79919292e0947fe977ef
>>>>>>> c4c1446f20f0b6f5b7fbe3729178b829533a0f0d

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.boolean  "special_offer"
    t.string   "meta_title",    :default => ""
<<<<<<< HEAD
    t.boolean  "help_info",     :default => false
=======
>>>>>>> c4c1446f20f0b6f5b7fbe3729178b829533a0f0d
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> c4c1446f20f0b6f5b7fbe3729178b829533a0f0d
  create_table "gritter_notices", :force => true do |t|
    t.integer  "owner_id",     :null => false
    t.string   "owner_type",   :null => false
    t.text     "text",         :null => false
    t.text     "options",      :null => false
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gritter_notices", ["owner_id", "delivered_at"], :name => "index_gritter_notices_on_owner_id_and_delivered_at"

<<<<<<< HEAD
=======
=======
>>>>>>> 8f213ae95b7cff23c8fe79919292e0947fe977ef
>>>>>>> c4c1446f20f0b6f5b7fbe3729178b829533a0f0d
  create_table "news", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.integer  "portfolio_id"
  end

  create_table "partners", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "partner_image_file_name"
    t.string   "partner_image_content_type"
    t.integer  "partner_image_file_size"
    t.datetime "partner_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolio_items", :force => true do |t|
    t.string   "title"
    t.integer  "portfolio_id"
    t.string   "portfolio_item_image_file_name"
    t.string   "portfolio_item_image_content_type"
    t.integer  "portfolio_item_image_file_size"
    t.datetime "portfolio_item_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "portfolio_image_file_name"
    t.string   "portfolio_image_content_type"
    t.integer  "portfolio_image_file_size"
    t.datetime "portfolio_image_updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "theme"
    t.text     "body"
    t.boolean  "approve"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_offers", :force => true do |t|
    t.string   "name"
    t.string   "special_image_file_name"
    t.string   "special_image_content_type"
    t.integer  "special_image_file_size"
    t.datetime "special_image_updated_at"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
