class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :current_acc
  before_action :check_person_name

  def sub s
    length = s.to_s.size
    str = s.to_s
    from = 2
    to = length - 3
    sub_s = str[from..to]
    return sub_s
  end

  def current_acc
    if user_signed_in?
      @current_acc = People.includes(:user).where(user_id: current_user.id)
    end
  end
  def check_person_name
    if user_signed_in?
      @current_acc = People.includes(:user).where(user_id: current_user.id)
      @current_acc.each do |current_acc|
        if current_acc.person_name.empty?
          if current_user.id == 2
            flash[:notice] = t("control.notice")
          elsif current_user.id == 3
            flash[:notice] = t("control.notice")
          end
        end
      end
    end
  end
end
