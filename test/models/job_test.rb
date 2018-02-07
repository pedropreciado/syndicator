# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  start_time  :string
#  end_time    :string
#  time_zone   :string
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
