class NotesController < ApplicationController
  
  def new
    @code = Code.find params[:code_id]
    @note = @code.notes.build
    
    @note.links.build # create an initial link to the source
  end
  
  def create
    @code = Code.find params[:code_id]
    @note = @code.notes.new params[:note]
    
    if @note.save
      flash[:notice] = 'added note'
      redirect_to @code
    else
      render :new
    end
  end
  
end
