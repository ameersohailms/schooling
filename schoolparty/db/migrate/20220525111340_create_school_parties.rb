class CreateSchoolParties < ActiveRecord::Migration[7.0]
  def change
    create_table :school_parties do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
