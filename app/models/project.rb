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

class Project < ActiveRecord::Base
  #attr_accessible :description, :design_team, :name, :project_type_id, :running_order

  # associations
  has_many   :photos
  belongs_to :project_type

  # validation
  validates :name, presence: true, uniqueness: true


  # callbacks
  #before_destroy :check_for_dependencies

  # scopes

end
