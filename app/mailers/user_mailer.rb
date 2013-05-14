class UserMailer < ActionMailer::Base
  default from: APP_CONFIG['email']

  def send_contact_email(contact_email)
  	@name = contact_email.name
  	@email = contact_email.email
  	@comment = contact_email.comment
  	mail(:to => "rodrigoignacionegrete@gmail.com", :subject => "Contacto DeseUnGusto")
  end
end
