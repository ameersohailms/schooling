class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.integer :user_id
      t.string :address
      t.integer :pin
      t.string :phone
      t.string :country
      t.string :state
      t.date :date_od_birth

      t.timestamps
    end
  end
end
