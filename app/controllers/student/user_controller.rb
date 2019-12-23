module Student
  class UsersController < StudentController
    def create
      render json:{data:1}
    end
  end
end
