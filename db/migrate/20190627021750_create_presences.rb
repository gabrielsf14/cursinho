class CreatePresences < ActiveRecord::Migration[5.2]
  def change
    create_table :presences do |t|
      t.boolean :is_present
      t.date :date
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
