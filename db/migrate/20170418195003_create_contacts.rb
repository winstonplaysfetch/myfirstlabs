class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :body
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
