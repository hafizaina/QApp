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

ActiveRecord::Schema.define(version: 20170823010558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "registrations", force: :cascade do |t|
    t.string "customer"
    t.integer "lien_fees"
    t.integer "title_fee"
    t.integer "sale_tax"
    t.integer "registration"
    t.integer "reg_surcharge"
    t.integer "tag_transfer"
    t.integer "special_plates"
    t.integer "online_fee"
    t.integer "mva_total"
    t.integer "service_fee"
    t.integer "paid_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_renewals", force: :cascade do |t|
    t.string "customer"
    t.integer "registration"
    t.integer "reg_surcharge"
    t.integer "special_plates"
    t.integer "mva_fee"
    t.integer "temp_registration"
    t.integer "admin_flag_fee"
    t.integer "online_fee"
    t.integer "service_fee"
    t.integer "paid_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temporary_tags", force: :cascade do |t|
    t.string "customer"
    t.integer "lien_fee"
    t.integer "title_fee"
    t.integer "tax_fee"
    t.integer "temp_tag"
    t.integer "special_plates"
    t.integer "online_fee"
    t.integer "mva_total"
    t.integer "service_fee"
    t.integer "total_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string "customer"
    t.string "title_number"
    t.integer "lien_fees"
    t.integer "title_fee"
    t.integer "tax_fee"
    t.integer "online_fee"
    t.integer "mva_total"
    t.integer "service_fee"
    t.integer "total_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
