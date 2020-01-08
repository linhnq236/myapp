module Student
  class PeopleController < StudentController
    skip_before_action :verify_authenticity_token

    def index
      @people = People.includes(:user).where(user_id: current_user.id)
      @people_id = current_user.id
    end

    def update
      people = People.where(user_id: params[:id])
      if people.update(person_name: params[:person_name],code: params[:code],sex: params[:sex],born: params[:born],address: params[:address],telephone: params[:telephone])
        redirect_to "/student/people"
      else
        redirect_to "/student/people"
      end
    end

  end
end
