#
# Model Representing a DRP Project that a mentor and
# mentee are working on.
#
class Project < ActiveRecord::Base
   belongs_to :student, :class_name => 'Users'
   belongs_to :mentor, :class_name => 'Users'
   belongs_to :project_state

   validates :email, :presence => true
   validates :major, :presence => true
   validates :past_courses, :presence => true
   validates :current_courses, :presence => true
   validates :interests, :presence => true
   validates :why, :presence => true
   validates :favorite, :presence => true
   validates :recommender, :presence => true
   validates :alternate, :presence => true
   validates :how, :presence => true
end
