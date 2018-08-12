class CreateAgancyTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :agancy_tickets do |t|
      t.string :subject, limit: 255, null: false, default: ""
      t.string :request, limit: 2000, null: false, default: ""
      t.date :due_date, null: false, index: true
      t.integer :agency_id, null: false, index: true
      t.integer :agency_staff_id, null: false, index: true
      t.integer :category, null: false, index: true
      t.boolean :importance, null: false, default: 0, index: true
      t.integer :status, null: false, default: 0, index: true
      t.integer :tabelog_staff_id, index: true
      t.integer :registrant_id, null: false
      t.datetime :read_check_at
      t.integer :which_ball, null: false, default: 0
      t.boolean :delete_flag, null: false, default: false, index: true
      t.datetime :topic_update_at, null: false, index: true

      t.timestamps
    end
  end
end
