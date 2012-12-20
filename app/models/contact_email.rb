class ContactEmail < ActiveRecord::Base
  attr_accessible :comment, :email, :name

  def create_contact(params)
  	self.name = params["name"]
  	self.email = params["email"]
  	self.comment = params["comment"]
  	self.save!
  end
end
