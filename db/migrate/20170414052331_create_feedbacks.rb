class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :commenter
      t.string :title
      t.text :body
      t.boolean :is_approved
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
