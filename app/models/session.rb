class Session < ActiveRecord::Base
  attr_accessible :course_id, :finish, :instructor, :session_type, :start, :weekday
end
