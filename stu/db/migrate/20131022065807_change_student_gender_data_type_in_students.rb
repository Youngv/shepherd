class ChangeStudentGenderDataTypeInStudents < ActiveRecord::Migration
  def change
    remove_column :students, :gender
    add_column :students, :gender, :string
  end
end
