class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :cohort

      t.timestamps
    end
  end
end
