module Admin
  class SubjectsController < AdminController
    before_action :set_subject, only: [:show, :edit, :update, :destroy]

    # GET /subjects
    # GET /subjects.json
    def index
      @subjects = Subject.all
    end

    # GET /subjects/1
    # GET /subjects/1.json
    def show
    end

    # GET /subjects/new
    def new
      @subject = Subject.new
    end

    # GET /subjects/1/edit
    def edit
    end

    # POST /subjects
    # POST /subjects.json
    def create
      @subject = Subject.new(subject_name: sub(params[:subject_name]))
      if @subject.save
        redirect_to '/admin/subjects'
      else
        render json: { data: @subject.errors, status: :unprocessable_entity }
      end
    end

    # PATCH/PUT /subjects/1
    # PATCH/PUT /subjects/1.json
    def update
      respond_to do |format|
        if @subject.update(subject_params)
          format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
          format.json { render :show, status: :ok, location: @subject }
        else
          format.html { render :edit }
          format.json { render json: @subject.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /subjects/1
    # DELETE /subjects/1.json
    def destroy
      @subject.destroy
      respond_to do |format|
        format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def convert_string s
      return s.to_s
    end
  end
end
