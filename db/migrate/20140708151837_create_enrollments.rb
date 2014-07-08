class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :subject
      t.string :period
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
