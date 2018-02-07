class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :start_time
      t.string :end_time
      t.string :time_zone
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
