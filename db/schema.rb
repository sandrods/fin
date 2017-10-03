# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160616011626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorias", force: :cascade do |t|
    t.string   "nome"
    t.string   "cd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contas", force: :cascade do |t|
    t.string   "nome",       limit: 30, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "conta_id"
  end

  add_index "formas", ["conta_id"], name: "index_formas_on_conta_id", using: :btree

  create_table "registros", force: :cascade do |t|
    t.date     "data"
    t.string   "descricao",    limit: 60
    t.decimal  "valor",                   precision: 9, scale: 2,                 null: false
    t.string   "cd",           limit: 1
    t.integer  "conta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoria_id"
    t.integer  "forma_id"
    t.boolean  "pago",                                            default: false
    t.integer  "transf_id"
  end

  add_index "registros", ["forma_id"], name: "index_registros_on_forma_id", using: :btree

  add_foreign_key "formas", "contas"
  add_foreign_key "registros", "formas"
end
