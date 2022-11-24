class CreateTextSummarizers < ActiveRecord::Migration[7.0]
  def change
    create_table :text_summarizers do |t|
      t.text :data_input
      t.text :data_summarized

      t.timestamps
    end
  end
end
