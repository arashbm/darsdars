class StudentCourse < ActiveRecord::Base
  attr_accessible :course, :student
  belongs_to :course
  belongs_to :student
end
