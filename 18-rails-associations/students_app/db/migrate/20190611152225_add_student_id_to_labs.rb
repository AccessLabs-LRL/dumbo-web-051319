class AddStudentIdToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :student_id, :integer
  end
end
