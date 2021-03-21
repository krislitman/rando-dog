class GifMailer < ApplicationMailer

  def new_email(gif, email_address)
    @greeting = "Here is your Random Dog Gif!"
    @gif = gif

    mail to: "#{email_address}",
         subject: "New Gif just for you!"
  end
end
