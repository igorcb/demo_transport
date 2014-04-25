class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :client, index: true
      t.string :place
      t.string :number

      t.timestamps
    end
  end
end
