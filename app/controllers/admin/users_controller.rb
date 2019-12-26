module Admin
  class UsersController < AdminController
    def index
      @users = People.includes(:user)
    end
    def create
      @user = User.new(email: sub(params[:email]), admin: params[:admin],password:"123456", password_confirmation: "123456")
      @user.save
      @people = People.new(user_id: User.last.id, department_id: 1)
      @people.save
      redirect_to "/admin/users"
    end

    def insert_people email
      @getUserId = User.select(:id).where(email: email)
      @people = People.new(user_id: @getUserId, department_id: 1)
      if @people.save
        render json: {data: @people}
      end
    end
  end
end
