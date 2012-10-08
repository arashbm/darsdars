class Course < ActiveRecord::Base
  attr_accessible :topic, :units
  has_many :student_courses
  has_many :students, :through => :student_courses
end
