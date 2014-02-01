#
# Model Representing a DRP Project that a mentor and
# mentee are working on.
#
class Project < ActiveRecord::Base
   belongs_to :student, :class_name => 'Users'
   belongs_to :mentor, :class_name => 'Users'
   belongs_to :project_state

   validates :title, :presence => true
end
