class UserMailer < ActionMailer::Base
  default from: "do-not-reply@storyitr8.com"

  def contact_mailer(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
