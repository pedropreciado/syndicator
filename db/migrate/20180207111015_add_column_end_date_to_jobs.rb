class AddColumnEndDateToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :end_date, :string
  end
end
