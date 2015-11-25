# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  image_url     :string(255)
#  project_id    :integer
#  caption       :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  running_order :integer
#

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
