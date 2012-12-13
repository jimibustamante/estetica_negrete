class ContactEmail < ActiveRecord::Base
  attr_accessible :comment, :email, :name

  def create_contact(params)
    Rails.logger.debug "PARAMS EN MODELO => #{params.inspect}"
  	self.name = params["name"]
  	self.email = params["email"]
  	self.comment = params["comment"]
    Rails.logger.debug "CONTACT => #{self.inspect}"
  	self.save!
  end
end
