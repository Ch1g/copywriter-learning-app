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

ActiveRecord::Schema[7.1].define(version: 2024_02_17_163209) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_modules", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_module_id", null: false
    t.index ["course_module_id"], name: "index_lessons_on_course_module_id"
  end

  create_table "resources", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.string "name"
    t.string "url"
    t.text "content"
    t.string "resource_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_resources_on_lesson_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.text "description"
    t.text "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_tasks_on_lesson_id"
  end

  add_foreign_key "lessons", "course_modules"
  add_foreign_key "resources", "lessons"
  add_foreign_key "tasks", "lessons"
end
