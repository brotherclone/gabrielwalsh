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

ActiveRecord::Schema.define(version: 2021_03_17_105707) do

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
    t.bigint "project_id"
    t.index ["project_id"], name: "index_case_studies_on_project_id"
  end

  create_table "case_study_items", force: :cascade do |t|
    t.integer "case_study_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "case_study_id"
    t.index ["case_study_id"], name: "index_case_study_items_on_case_study_id"
  end

  create_table "copy_blocks", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "case_study_item_id"
    t.bigint "project_id"
    t.bigint "project_platform_id"
    t.bigint "organization_id"
    t.bigint "job_id"
    t.bigint "visual_id"
    t.bigint "skill_id"
    t.index ["case_study_item_id"], name: "index_copy_blocks_on_case_study_item_id"
    t.index ["job_id"], name: "index_copy_blocks_on_job_id"
    t.index ["organization_id"], name: "index_copy_blocks_on_organization_id"
    t.index ["project_id"], name: "index_copy_blocks_on_project_id"
    t.index ["project_platform_id"], name: "index_copy_blocks_on_project_platform_id"
    t.index ["skill_id"], name: "index_copy_blocks_on_skill_id"
    t.index ["visual_id"], name: "index_copy_blocks_on_visual_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "asset_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "project_platform_id"
    t.bigint "organization_id"
    t.bigint "my_role_id"
    t.index ["my_role_id"], name: "index_icons_on_my_role_id"
    t.index ["organization_id"], name: "index_icons_on_organization_id"
    t.index ["project_platform_id"], name: "index_icons_on_project_platform_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_jobs_on_organization_id"
  end

  create_table "my_roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "job_id"
    t.bigint "project_id"
    t.index ["job_id"], name: "index_my_roles_on_job_id"
    t.index ["project_id"], name: "index_my_roles_on_project_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sector_id"
    t.index ["sector_id"], name: "index_organizations_on_sector_id"
  end

  create_table "project_platforms", force: :cascade do |t|
    t.string "platform_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_project_platforms_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.date "working_date"
    t.date "publish_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_projects_on_organization_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "my_role_id"
    t.index ["my_role_id"], name: "index_skills_on_my_role_id"
  end

  create_table "visuals", force: :cascade do |t|
    t.string "asset_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "case_study_item_id"
    t.bigint "project_id"
    t.bigint "case_study_id"
    t.index ["case_study_id"], name: "index_visuals_on_case_study_id"
    t.index ["case_study_item_id"], name: "index_visuals_on_case_study_item_id"
    t.index ["project_id"], name: "index_visuals_on_project_id"
  end

end
