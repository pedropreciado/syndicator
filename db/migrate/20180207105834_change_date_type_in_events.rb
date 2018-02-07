class ChangeDateTypeInEvents < ActiveRecord::Migration[5.1]
  def self.up
    change_column :events, :start_date, :string
    change_column :events, :end_date, :string
  end

  def self.down
    change_column :events, :start_date, :date
    change_column :events, :end_date, :date

  end

end
