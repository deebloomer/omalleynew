# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  description     :text
#  design_team     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  project_type_id :integer
#  running_order   :integer
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
