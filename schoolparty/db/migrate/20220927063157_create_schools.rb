class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table "sp_schools.schools" do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.string :location
      t.text :address
      t.string :country
      t.string :state
      t.string :city
      t.timestamps
    end
  end
end
