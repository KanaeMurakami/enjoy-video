# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_21_142755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_genres", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "genre_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_video_genres_on_genre_id"
    t.index ["video_id", "genre_id"], name: "index_video_genres_on_video_id_and_genre_id", unique: true
    t.index ["video_id"], name: "index_video_genres_on_video_id"
  end

  create_table "video_payments", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "payment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_video_payments_on_payment_id"
    t.index ["video_id", "payment_id"], name: "index_video_payments_on_video_id_and_payment_id", unique: true
    t.index ["video_id"], name: "index_video_payments_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "video_genres", "genres"
  add_foreign_key "video_genres", "videos"
  add_foreign_key "video_payments", "payments"
  add_foreign_key "video_payments", "videos"
end
