ActiveRecord::Schema.define(version: 20160923030021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "note_id"
    t.string   "author_first_name"
    t.string   "author_last_name"
  end

  create_table "books_years", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string  "text"
    t.integer "book_id"
    t.integer "year_id"
  end

  create_table "notes_tables", force: :cascade do |t|
    t.string "text"
  end

  create_table "years", force: :cascade do |t|
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "note_id"
  end

end
