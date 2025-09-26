
ActiveRecord::Schema[8.0].define(version: 2025_09_26_044716) do
  create_table "admissions", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.decimal "fee"
    t.integer "year_of_joining"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_admissions_on_course_id"
    t.index ["student_id"], name: "index_admissions_on_student_id"
  end

  create_table "applications", force: :cascade do |t|
    t.string "applicant_name"
    t.string "email"
    t.string "phone"
    t.integer "course_id", null: false
    t.string "status", default: "Pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
    t.integer "user_id"
    t.index ["course_id"], name: "index_applications_on_course_id"
  end

  create_table "college_notifications", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subjects"
  end

  create_table "results", force: :cascade do |t|
    t.integer "student_id", null: false
    t.string "subject"
    t.integer "semester"
    t.decimal "marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_results_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

  add_foreign_key "admissions", "courses"
  add_foreign_key "admissions", "students"
  add_foreign_key "applications", "courses"
  add_foreign_key "results", "students"
end
