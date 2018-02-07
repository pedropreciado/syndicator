class ChangeTimeTypeInEvents < ActiveRecord::Migration[5.1]
  def self.up
    change_column :events, :start_time, :string
    change_column :events, :end_time, :string
  end

  def self.down
    change_column :events, :start_time, :time
    change_column :events, :end_time, :time

  end

end
