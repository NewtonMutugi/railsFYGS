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

ActiveRecord::Schema.define(version: 2021_09_06_073405) do

  create_table "contributions", force: :cascade do |t|
    t.integer "contribution"
    t.date "date_of_payment"
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_contributions_on_member_id"
  end

  create_table "guarantors", force: :cascade do |t|
    t.string "guarantor_name"
    t.integer "loaner_id"
    t.integer "guaranteed_amount"
    t.integer "loan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loan_id"], name: "index_guarantors_on_loan_id"
  end

  create_table "loan_types", force: :cascade do |t|
    t.string "loan_type"
    t.float "interest_rate"
    t.integer "repayment_period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "loan_id", null: false
    t.index ["loan_id"], name: "index_loan_types_on_loan_id"
  end

  create_table "loans", force: :cascade do |t|
    t.string "loan_type"
    t.date "date_borrowed"
    t.integer "loan_amount"
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_loans_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.date "DOB"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contributions", "members"
  add_foreign_key "guarantors", "loans"
  add_foreign_key "loan_types", "loans"
  add_foreign_key "loans", "members"
end
