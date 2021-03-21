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

  def new
    GifMailer.new_email(params[:gif], params[:email_address]).deliver_now
    flash[:notice] = "Your email has been sent to #{params[:email_address]}!"
    redirect_to "/"

    if params[:email_address].empty?
      flash[:notice] = 'Please enter a valid email address'
    end
  end
end