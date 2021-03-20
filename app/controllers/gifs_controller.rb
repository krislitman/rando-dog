class GifsController < ApplicationController

  def index
    begin
      @gif = DoggoService.random_with_type(params[:breed])
      @dog = params[:breed].titleize
    rescue
      flash[:notice] = 'An error occured while finding your gif, please try again'
      redirect_to "/"
    end
  end
end