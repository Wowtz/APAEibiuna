class ContactsController < ApplicationController  
  def index
    render new_contact_path	
  end

  def new
    @contact = Contact.new
  end

  def create
    # Create the contact from params
    @contact = Contact.new(contact_params)
    if @contact.save
      # Deliver the signup email
      ContactUsMailer.send_signup_email(@contact).deliver
      render :action => 'new'
    else
      render :action => 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
