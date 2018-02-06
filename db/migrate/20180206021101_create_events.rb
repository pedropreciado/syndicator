class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :author_id
      t.string :description
      t.time :start_time
      t.timetz :end_time
      t.datatz :start
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
