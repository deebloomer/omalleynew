# == Schema Information
#
# Table name: project_types
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  running_order :integer
#

require 'test_helper'

class ProjectTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
