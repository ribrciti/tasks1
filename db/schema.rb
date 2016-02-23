ActiveRecord::Schema.define(version: 20160223161549) do

  create_table "projects", force: :cascade do |t|
    t.string   "title",            limit: 255
    t.text     "description",      limit: 65535
    t.decimal  "percent_complete",               precision: 10
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

end
