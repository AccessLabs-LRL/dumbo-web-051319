class CreateStudentLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :student_labs do |t|
      t.references :student, foreign_key: true
      t.belongs_to :lab, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
