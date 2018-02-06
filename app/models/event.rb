# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  author_id   :integer
#  description :string
#  start_time  :time
#  end_time    :time
#  start_date  :date
#  end_date    :date
#  time_zone   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :string
#

class Event < ApplicationRecord
  validates :name, :description, :start_time, :end_time, :time_zone, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
