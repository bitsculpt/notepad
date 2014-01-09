class NotesController < ApplicationController
 # making a change to test remote repository
  before_filter :authenticate_user!
  def index
    @user = User.find(params[:user_id])
    if current_user == @user
      @notes = @user.notes
    else
      @notes = @user.notes.where(:public => true) 
    end
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
  params.require(:note).permit(:title, :description, :category_id, :public)
end
end

