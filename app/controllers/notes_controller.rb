class NotesController < ApplicationController
  def new

  end
  def create

  end

  private
  def notes_params
    params.require(:note).permit(:text)
  end

end
