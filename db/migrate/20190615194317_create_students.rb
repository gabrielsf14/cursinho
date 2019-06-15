class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :registration
      t.string :cpf
      t.date :date_of_birth
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
