class NotesController < ApplicationController
 # making a change to test remote repository
  def index
    @notes = Note.all 
  end

end
