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

ActiveRecord::Schema.define(version: 12) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_awards_on_organization_id"
  end

  create_table "degrees", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_degrees_on_organization_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.bigint "skill_id"
    t.index ["organization_id"], name: "index_jobs_on_organization_id"
    t.index ["skill_id"], name: "index_jobs_on_skill_id"
  end

  create_table "organization_types", force: :cascade do |t|
    t.integer "enum_index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_type_id"
    t.bigint "industry_id"
    t.index ["industry_id"], name: "index_organizations_on_industry_id"
    t.index ["organization_type_id"], name: "index_organizations_on_organization_type_id"
  end

  create_table "portfolio_image_call_outs", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.string "title"
    t.string "caption"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "portfolio_image_id"
    t.index ["portfolio_image_id"], name: "index_portfolio_image_call_outs_on_portfolio_image_id"
  end

  create_table "portfolio_images", force: :cascade do |t|
    t.string "image_url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_portfolio_images_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "project_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "organization_id"
    t.index ["organization_id"], name: "index_projects_on_organization_id"
  end

  create_table "served_roles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "project_id"
    t.bigint "skill_id"
    t.index ["project_id"], name: "index_served_roles_on_project_id"
    t.index ["skill_id"], name: "index_served_roles_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "discipline_id"
    t.index ["discipline_id"], name: "index_skills_on_discipline_id"
  end

end
