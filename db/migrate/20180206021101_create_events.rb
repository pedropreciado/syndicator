class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :author_id
      t.string :description
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.string :time_zone

      t.timestamps
    end

    add_index :events, :author_id
  end
end
