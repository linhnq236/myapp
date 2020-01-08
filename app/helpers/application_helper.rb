module ApplicationHelper

  def format_date created_at
    return created_at.strftime("%Y/%m/%d")
  end
  def format_month_day date
    return date.strftime("%m/%d")
  end
  def format_time datetime
    return datetime.strftime("%H:%M")
  end

  def convert_ckeditor string
    return string.html_safe
  end

  def current_account current_acc
    current_acc.each do |current|
      return current.person_name
    end
  end
end
