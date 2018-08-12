class CreateAgancyTicketComments < ActiveRecord::Migration[5.2]
  def change
    create_table :agancy_ticket_comments do |t|
      t.string :comment, limit: 2000 ,null: false, default: ""
      t.string :change_sentence, limit: 255, null:false, default: ""
      t.integer :user_account_id, null: false
      t.references :agancy_ticket, foreign_key: true
      t.boolean :delete_flag, null: false, default: false
      t.datetime :comment_update_at ,null: false

      t.timestamps
    end
  end
end
