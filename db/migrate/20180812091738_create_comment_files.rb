class CreateCommentFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_files do |t|
      t.string :file_name, null: false, default: ""
      t.string :file_path, null: false, default: ""
      t.references :agancy_ticket_comment, foreign_key: true, null: false
      t.boolean :delete_flag, null: false, default: false

      t.timestamps
    end
  end
end
