# Preview all emails at http://localhost:3000/rails/mailers/gif_mailer
class GifMailerPreview < ActionMailer::Preview
  def new_email
    GifMailer.new_email
  end
end
