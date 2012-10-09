# encoding: UTF-8
module SessionsHelper
  def sessions_summery(course)
        course.sessions.each do |s|
          concat "#{weekday_name s.weekday} از #{nice_time s.start} تا #{nice_time s.finish}"
          concat "<br />".html_safe
      end
      return ''
  end
end
