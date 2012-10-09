# encoding: UTF-8
module CoursesHelper
  def weekday_name(weekday)
    days = ['یکشنبه', 'دوشنبه', 'سه‌شنبه', 'چهارشنبه', 'پنج‌شنبه', 'جمعه', 'شنبه']
    days[weekday]
  end
  def nice_time(time)
    time.strftime(time.min == 0 ? "%k" : "%k:%M")
  end
end
