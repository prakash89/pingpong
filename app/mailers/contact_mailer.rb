class ContactMailer < ActionMailer::Base

	def contact_email(from_email, to_email, name, phone, message)
    @from_email = from_email
    @to_email = to_email
    @name = name
    @phone = phone
    @body = "Name : " + @name +  "\n" + "Message : " + message + @phone
    mail(:from => @from_email, :to => @to_email, :subject => 'Contact Information', :body => @body)
  end
end