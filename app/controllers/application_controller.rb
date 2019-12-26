class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def sub s
    length = s.to_s.size
    str = s.to_s
    from = 2
    to = length - 3
    sub_s = str[from..to]
    return sub_s
  end
end
