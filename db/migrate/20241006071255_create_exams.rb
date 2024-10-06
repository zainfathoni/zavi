class CreateExams < ActiveRecord::Migration[8.0]
  def change
    create_table :exams do |t|
      t.integer :year
      t.integer :term
      t.string :subject
      t.string :grade
      t.text :overview
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
