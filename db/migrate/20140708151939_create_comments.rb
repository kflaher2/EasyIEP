class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :description
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
