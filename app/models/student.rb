class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :course_ids
  has_many :student_courses
  has_many :courses, :through => :student_courses

  def weekday_sessions(weekday)
    Session.where(course_id: course_ids, weekday: weekday)
  end
end
