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
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
