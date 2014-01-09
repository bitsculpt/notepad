class NotesController < ApplicationController
 # making a change to test remote repository
 before_filter :authenticate_user!
 def index
  @notes = current_user.notes 
end
def new
  @notes = Note.new
end

def create
  @note = current_user.notes.build(note_params)
  if @note.save
    redirect_to @note, notice: 'Note was successfully created.'
  else
    render 'new'
  end
end
def show
@note = Note.find(params[:id])
end




def note_params
  params.require(:note).permit(:title, :description, :category_id)
end
end

