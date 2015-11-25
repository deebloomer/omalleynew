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

class ProjectType < ActiveRecord::Base


  # associations
  has_many :projects
  accepts_nested_attributes_for :projects

  #attr_accessible :projects_attributes, :name, :running_order

  # validation
  validates :name, presence: true



  # callbacks
  #before_destroy :check_for_dependencies

  # scopes

end
