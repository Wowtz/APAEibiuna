class ContactsController < ApplicationController  
  def index
    render new_contact_path	
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      redirect_to root_path, notice: "Sua mensagem foi enviada com sucesso!"
    else
      flash[:error] = "Erro: Sua mensagem não foi enviada!"
      render new_contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
