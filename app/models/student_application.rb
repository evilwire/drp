class StudentApplication < ActiveRecord::Base
  belongs_to :users, :class_name => 'Users'

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
