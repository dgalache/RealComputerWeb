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

ActiveRecord::Schema.define(version: 20160515194555) do

  create_table "cargos", force: :cascade do |t|
    t.string   "tipo"
    t.string   "salario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empregadores", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empregados", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "dataadm"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "cargo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "empregados", ["cargo_id"], name: "index_empregados_on_cargo_id"

  create_table "ordens", force: :cascade do |t|
    t.string   "equipamento"
    t.string   "defeito"
    t.string   "marca"
    t.string   "descricao"
    t.string   "string"
    t.string   "status"
    t.string   "valor"
    t.integer  "cliente_id"
    t.integer  "empregado_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "ordens", ["cliente_id"], name: "index_ordens_on_cliente_id"
  add_index "ordens", ["empregado_id"], name: "index_ordens_on_empregado_id"

end
