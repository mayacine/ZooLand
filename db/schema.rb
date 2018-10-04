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

ActiveRecord::Schema.define(version: 20181004122336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.bigint "type_animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["type_animal_id"], name: "index_animals_on_type_animal_id"
  end

  create_table "postes", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statut_taches", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taches", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.text "detail_tache"
    t.bigint "animal_id"
    t.bigint "user_id"
    t.string "cree_par"
    t.datetime "date_debut"
    t.datetime "date_fin"
    t.bigint "statut_tache_id"
    t.bigint "type_tache_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_taches_on_animal_id"
    t.index ["statut_tache_id"], name: "index_taches_on_statut_tache_id"
    t.index ["type_tache_id"], name: "index_taches_on_type_tache_id"
    t.index ["user_id"], name: "index_taches_on_user_id"
  end

  create_table "type_animals", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_taches", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "poste_id"
    t.string "code"
    t.string "prenom"
    t.string "nom"
    t.date "date_de_naissance"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "type_animals"
  add_foreign_key "taches", "animals"
  add_foreign_key "taches", "statut_taches", column: "statut_tache_id"
  add_foreign_key "taches", "type_taches", column: "type_tache_id"
  add_foreign_key "taches", "users"
end
