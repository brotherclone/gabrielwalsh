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

ActiveRecord::Schema.define(version: 15) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "case_studies", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "sub_title"
    t.string "large_visual"
    t.bigint "project_id"
    t.index ["project_id"], name: "index_case_studies_on_project_id"
  end

  create_table "case_study_items", force: :cascade do |t|
    t.integer "case_study_type"
    t.string "head_line"
    t.string "sub_head"
    t.string "text_1"
    t.string "text_2"
    t.string "text_3"
    t.string "image_1"
    t.string "image_2"
    t.string "image_3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "case_study_id"
    t.index ["case_study_id"], name: "index_case_study_items_on_case_study_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "title"
    t.string "responsibilities"
    t.string "accomplishments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_jobs_on_organization_id"
  end

  create_table "my_role_during_jobs", force: :cascade do |t|
    t.bigint "my_role_id"
    t.bigint "job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_my_role_during_jobs_on_job_id"
    t.index ["my_role_id"], name: "index_my_role_during_jobs_on_my_role_id"
  end

  create_table "my_role_on_projects", force: :cascade do |t|
    t.bigint "my_role_id"
    t.bigint "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["my_role_id"], name: "index_my_role_on_projects_on_my_role_id"
    t.index ["project_id"], name: "index_my_role_on_projects_on_project_id"
  end

  create_table "my_roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organization_categories", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "sector_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_categories_on_organization_id"
    t.index ["sector_id"], name: "index_organization_categories_on_sector_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.string "description"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_platforms", force: :cascade do |t|
    t.string "platform_name"
    t.string "description"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_project_platforms_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.date "working_date"
    t.date "publish_date"
    t.string "description"
    t.string "large_image"
    t.string "small_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_projects_on_organization_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.string "icon"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "my_role_id"
    t.index ["my_role_id"], name: "index_skills_on_my_role_id"
  end

end
