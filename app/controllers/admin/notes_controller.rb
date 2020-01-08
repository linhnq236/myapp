module Admin
  class NotesController < AdminController
    DEFAULT_PER_PAGE = 10

    def index
      @notes = Note.order("created_at DESC").paginate(:page => params[:page], :per_page => DEFAULT_PER_PAGE)
      @note_teachers = Note.order("created_at DESC").where(use: 1).paginate(:page => params[:page], :per_page => DEFAULT_PER_PAGE)
      @note_students = Note.order("created_at DESC").where(use: 2).paginate(:page => params[:page], :per_page => DEFAULT_PER_PAGE)
    end

    def show
      @note = Note.where(id: params[:id])
    end
    # GET /notes/new
    def new
      @note = Note.new
    end

    # GET /notes/1/edit
    def edit
    end

    # POST /notes
    # POST /notes.json
    def create
      @note = Note.new(note_params.merge(use: params[:use], status: 1))
      if @note.save
        redirect_to :admin_notes
      else
        render json:{data: @note.errors}
      end
    end

    # PATCH/PUT /notes/1
    # PATCH/PUT /notes/1.json
    def update
      respond_to do |format|
        if @note.update(note_params)
          format.html { redirect_to @note, notice: 'Note was successfully updated.' }
          format.json { render :show, status: :ok, location: @note }
        else
          format.html { render :edit }
          format.json { render json: @note.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /notes/1
    # DELETE /notes/1.json
    def destroy
      @note.destroy
      respond_to do |format|
        format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
    def set_note
      @note = Note.find(params[:id])
    end
      # Never trust parameters from the scary internet, only allow the white list through.
      def note_params
        params.require(:note).permit(:title, :content)
      end
  end
end
