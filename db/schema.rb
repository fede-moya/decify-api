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

ActiveRecord::Schema.define(version: 2019_04_13_230315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "decision_id"
    t.bigint "user_id", null: false
    t.boolean "selected", default: false
    t.index ["decision_id"], name: "index_alternatives_on_decision_id"
    t.index ["user_id"], name: "index_alternatives_on_user_id"
  end

  create_table "decision_tags", force: :cascade do |t|
    t.bigint "decision_id"
    t.bigint "tag_id"
    t.index ["decision_id"], name: "index_decision_tags_on_decision_id"
    t.index ["tag_id"], name: "index_decision_tags_on_tag_id"
  end

  create_table "decision_types", force: :cascade do |t|
    t.string "name"
    t.integer "code"
  end

  create_table "decisions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "finalized_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "decision_type_id"
    t.string "decision_type_name"
    t.integer "decision_type_code"
    t.integer "state", default: 0, null: false
    t.index ["decision_type_id"], name: "index_decisions_on_decision_type_id"
    t.index ["user_id"], name: "index_decisions_on_user_id"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_groups_on_organization_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.bigint "user_id"
    t.bigint "decision_id"
    t.integer "likes_count"
    t.integer "dislikes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decision_id"], name: "index_messages_on_decision_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "text"
  end

  create_table "user_decisions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "decision_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decision_id"], name: "index_user_decisions_on_decision_id"
    t.index ["user_id"], name: "index_user_decisions_on_user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_type"
    t.string "password_digest"
    t.bigint "organization_id"
    t.string "authorization_code"
    t.string "avatar_url"
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "alternative_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alternative_id"], name: "index_votes_on_alternative_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "alternatives", "decisions"
  add_foreign_key "alternatives", "users"
  add_foreign_key "decision_tags", "decisions"
  add_foreign_key "decision_tags", "tags"
  add_foreign_key "decisions", "decision_types"
  add_foreign_key "decisions", "users"
  add_foreign_key "groups", "organizations"
  add_foreign_key "user_decisions", "decisions"
  add_foreign_key "user_decisions", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
  add_foreign_key "users", "organizations"
  add_foreign_key "votes", "alternatives"
  add_foreign_key "votes", "users"
end
