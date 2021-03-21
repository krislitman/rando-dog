class GifMailer < ApplicationMailer

  def new_email(gif)
    @greeting = "#{gif.title}"

    mail to: "#{params[:sender]}",
         subject: "New Gif just for you!"
  end
end
