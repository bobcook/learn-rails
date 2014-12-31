class UserMailer < ActionMailer::Base
  default from: "Do_not_reply@storyitr8.com"

  def contact_mailer(contact)
    @contact = contact
    mail(to; Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
