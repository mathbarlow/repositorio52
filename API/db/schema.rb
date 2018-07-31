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

ActiveRecord::Schema.define(version: 2018_07_16_040529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.datetime "fecha"
    t.datetime "hora_inicio"
    t.datetime "hora_fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calificaciones", force: :cascade do |t|
    t.integer "puntaje"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materias", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materias_uni", force: :cascade do |t|
    t.bigint "materia_id"
    t.bigint "universidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materia_id"], name: "index_materias_uni_on_materia_id"
    t.index ["universidad_id"], name: "index_materias_uni_on_universidad_id"
  end

  create_table "tutorias", force: :cascade do |t|
    t.bigint "calificacion_id"
    t.bigint "agenda_id"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agenda_id"], name: "index_tutorias_on_agenda_id"
    t.index ["calificacion_id"], name: "index_tutorias_on_calificacion_id"
    t.index ["usuario_id"], name: "index_tutorias_on_usuario_id"
  end

  create_table "universidad_localidades", force: :cascade do |t|
    t.bigint "localidad_id"
    t.bigint "universidad_id"
    t.string "sede"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localidad_id"], name: "index_universidad_localidades_on_localidad_id"
    t.index ["universidad_id"], name: "index_universidad_localidades_on_universidad_id"
  end

  create_table "universidades", force: :cascade do |t|
    t.bigint "usuarios_id"
    t.string "nit"
    t.string "nombre"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuarios_id"], name: "index_universidades_on_usuarios_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.bigint "universidades_id"
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "cedula"
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "direccion"
    t.string "email"
    t.integer "perfil"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_usuarios_on_confirmation_token", unique: true
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_usuarios_on_uid_and_provider", unique: true
    t.index ["universidades_id"], name: "index_usuarios_on_universidades_id"
  end

end
