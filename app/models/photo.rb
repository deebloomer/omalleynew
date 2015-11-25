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

class Photo < ActiveRecord::Base
  #attr_accessible :caption, :image_url, :project_id, :running_order

  # associations
  belongs_to :project

  # validation
  validates :project_id, presence: true
  validates :image_url, presence: true

  # callbacks
  #before_destroy :check_for_dependencies

  # scopes
end
