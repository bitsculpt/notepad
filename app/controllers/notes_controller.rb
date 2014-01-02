class NotesController < ApplicationController
 # making a change to test remote repository
 def index
  @notes = Note.all 
end
def new
  @notes = Note.new
end

def create
  @note = Note.new(note_params)
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
  params.require(:note).permit(:title, :description)
end
end

