module CoursesHelper
  def take_datetime datetime
    array = datetime.split(',')
    return array[0]
  end
  def compare date
    current_date = Time.now.to_date
    if date.inspect == current_date.inspect
      return "cursor-pointer check"
    end
  end
  def compare_date date
    current_date = Time.now.to_date
    if date.inspect == current_date.inspect
      return true
    end
  end
  def compare_time start, finsh
    current_time = Time.now.to_time
    if current_time >= start && current_time <= finsh
      # && current_time <= finsh
      return 1
    else
      return -1
    end
  end
end
