class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.boolean :gender
      t.string :email
      t.integer :age
      t.text :background
      t.date :birthday

      t.timestamps
    end
  end
end
