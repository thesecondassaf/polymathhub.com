# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_11_132423) do

  create_table "comments", force: :cascade do |t|
    t.integer "prompt_id"
    t.integer "discussion_id", null: false
    t.integer "member_id", null: false
    t.text "content", null: false
    t.string "comment_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discussion_id"], name: "index_comments_on_discussion_id"
    t.index ["member_id"], name: "index_comments_on_member_id"
    t.index ["prompt_id"], name: "index_comments_on_prompt_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "name", null: false
    t.text "goal", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_discussions_on_project_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participations", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "discussion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discussion_id"], name: "index_participations_on_discussion_id"
    t.index ["member_id"], name: "index_participations_on_member_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.string "name", null: false
    t.text "exposition", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_projects_on_owner_id"
  end

  add_foreign_key "comments", "comments", column: "prompt_id"
  add_foreign_key "comments", "discussions"
  add_foreign_key "comments", "members"
  add_foreign_key "discussions", "projects"
  add_foreign_key "participations", "discussions"
  add_foreign_key "participations", "members"
  add_foreign_key "projects", "members", column: "owner_id"
end
