class CreateBlessings < ActiveRecord::Migration
  def change
    create_table :blessings do |t|
      t.string :name
      t.integer :rating
      t.integer :student_id
    end
  end
end
