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

ActiveRecord::Schema.define(version: 2021_05_22_174800) do

  create_table "balance_criptomonedas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "valor"
    t.string "token_criptomoneda"
    t.bigint "usuario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["token_criptomoneda"], name: "fk_rails_67fe9cbf3b"
    t.index ["usuario_id"], name: "fk_rails_da88b03415"
  end

  create_table "balance_divisas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "valor"
    t.bigint "usuario_id"
    t.string "token_divisa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["token_divisa"], name: "fk_rails_2940c3d9e5"
    t.index ["usuario_id"], name: "fk_rails_9d84575976"
  end

  create_table "criptomonedas", primary_key: "token_criptomoneda", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre"
    t.float "valor_actual"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "divisas", primary_key: "token_divisa", id: :string, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nombre_divisa"
    t.float "valor"
    t.string "simbolo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "valor_historicos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "fecha"
    t.float "valor"
    t.string "token_criptomoneda"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["token_criptomoneda"], name: "fk_rails_d0d73d66e9"
  end

  add_foreign_key "balance_criptomonedas", "criptomonedas", column: "token_criptomoneda", primary_key: "token_criptomoneda"
  add_foreign_key "balance_criptomonedas", "usuarios"
  add_foreign_key "balance_divisas", "divisas", column: "token_divisa", primary_key: "token_divisa"
  add_foreign_key "balance_divisas", "usuarios"
  add_foreign_key "valor_historicos", "criptomonedas", column: "token_criptomoneda", primary_key: "token_criptomoneda"
end
