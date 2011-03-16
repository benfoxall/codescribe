class CodesController < ApplicationController
  def new
    @code = Code.new params[:code]
  end

  def show
    @code = Code.find params[:id]
  end
  
  def create
    @code = Code.new params[:code]
    if @code.save
      redirect_to @code
    else
      render :new
    end
  end

end
