module Teacher
  class UsersController < TeacherController
    def change
      render json:{data:1}
    end
  end
end
