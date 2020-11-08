class ContatosController < ApplicationController
  def index
    @contato = Contato.new
    render :new
  end
  
  def new
    @contato = Contato.new
  end

  def create
    @contato = Contato.new(params[:contato])
    @contato.request = request
    if @contato.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Mensagem não foi enviada, preencha corretamente os campos.'
      render :new
    end
  end
end
