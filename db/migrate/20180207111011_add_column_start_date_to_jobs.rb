class AddColumnStartDateToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :start_date, :string
  end
end
