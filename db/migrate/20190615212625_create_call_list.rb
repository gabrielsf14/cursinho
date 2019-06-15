class CreateCallList < ActiveRecord::Migration[5.2]
  def change
    create_table :call_lists do |t|
      t.date :date
      t.references :lesson, foreign_key: true
    end
  end
end
