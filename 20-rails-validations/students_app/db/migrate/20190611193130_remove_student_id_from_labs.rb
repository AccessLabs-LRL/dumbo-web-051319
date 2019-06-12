class RemoveStudentIdFromLabs < ActiveRecord::Migration[5.2]
  def change
    remove_column :labs, :student_id, :integer
  end
end
