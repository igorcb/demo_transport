class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :tipo
      t.string :nome
      t.string :fone
      t.string :complemento
      t.integer :contact_id
      t.string :contact_type

      t.timestamps
    end
  end
end
