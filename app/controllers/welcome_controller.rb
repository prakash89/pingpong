class WelcomeController < ApplicationController
  def index
  end

  def contact
  end

  def email_contact
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @phone = params[:contact][:phone]
    @message = params[:contact][:message]
    @to_email = "plingaiah@qwinixtech.com"
      ContactMailer.contact_email(@email, @to_email, @name, @phone, @message).deliver
      # flash[:notice] = "The Contact Information has been sent"
      redirect_to root_url
  end

  def participents
  end

  def result
    @contests = Contest.all.reverse
  end

  def shedule
  end

  def today_match
    @matches = Match.all
  end

  def organizer
  end

  def match_pdf
  end
end
