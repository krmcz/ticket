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

ActiveRecord::Schema.define(version: 2018_08_12_091738) do

  create_table "agancy_ticket_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "comment", limit: 2000, default: "", null: false
    t.string "change_sentence", default: "", null: false
    t.integer "user_account_id", null: false
    t.bigint "agancy_ticket_id"
    t.boolean "delete_flag", default: false, null: false
    t.datetime "comment_update_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agancy_ticket_id"], name: "index_agancy_ticket_comments_on_agancy_ticket_id"
  end

  create_table "agancy_tickets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "subject", default: "", null: false
    t.string "request", limit: 2000, default: "", null: false
    t.date "due_date", null: false
    t.integer "agency_id", null: false
    t.integer "agency_staff_id", null: false
    t.integer "category", null: false
    t.boolean "importance", default: false, null: false
    t.integer "status", default: 0, null: false
    t.integer "tabelog_staff_id"
    t.integer "registrant_id", null: false
    t.datetime "read_check_at"
    t.integer "which_ball", default: 0, null: false
    t.boolean "delete_flag", default: false, null: false
    t.datetime "topic_update_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agency_id"], name: "index_agancy_tickets_on_agency_id"
    t.index ["agency_staff_id"], name: "index_agancy_tickets_on_agency_staff_id"
    t.index ["category"], name: "index_agancy_tickets_on_category"
    t.index ["delete_flag"], name: "index_agancy_tickets_on_delete_flag"
    t.index ["due_date"], name: "index_agancy_tickets_on_due_date"
    t.index ["importance"], name: "index_agancy_tickets_on_importance"
    t.index ["status"], name: "index_agancy_tickets_on_status"
    t.index ["tabelog_staff_id"], name: "index_agancy_tickets_on_tabelog_staff_id"
    t.index ["topic_update_at"], name: "index_agancy_tickets_on_topic_update_at"
  end

  create_table "comment_files", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "file_name", default: "", null: false
    t.string "file_path", default: "", null: false
    t.bigint "agancy_ticket_comment_id", null: false
    t.boolean "delete_flag", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agancy_ticket_comment_id"], name: "index_comment_files_on_agancy_ticket_comment_id"
  end

  add_foreign_key "agancy_ticket_comments", "agancy_tickets"
  add_foreign_key "comment_files", "agancy_ticket_comments"
end
