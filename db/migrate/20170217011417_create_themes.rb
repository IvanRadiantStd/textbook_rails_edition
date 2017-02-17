class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :title
      t.text :content
      t.integer :subject_id
      t.timestamps
    end
  end
end
