class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.integer :course_id
      t.timestamps
    end
  end
end
