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
end
