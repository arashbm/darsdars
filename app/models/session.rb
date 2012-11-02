class Session < ActiveRecord::Base
  attr_accessible :course_id, :finish, :instructor, :session_type, :start, :weekday
  belongs_to :course

  def self.on(date)
    where(weekday: date.wday)
  end
end
