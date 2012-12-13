class UserMailer < ActionMailer::Base
  default from: "jimibustamante@gmail.com"

  def send_contact_email(contact_email)
  	@name = contact_email.name
  	@email = contact_email.email
  	@comment = contact_email.comment
  	mail(:to => "jimibustamante@gmail.com", :subject => "Contacto DeseUnGusto")
  end
end
