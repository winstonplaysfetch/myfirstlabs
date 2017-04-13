class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :body
      t.stringproject :email

      t.timestamps
    end
  end
end
