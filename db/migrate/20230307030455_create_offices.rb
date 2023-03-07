class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :name
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end
