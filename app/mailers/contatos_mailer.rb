class ContatosMailer < ApplicationMailer
  default from: "walter.camargo.gr@gmail.com"

  def faleconosco(contato)
    @contato = contato
    mail to: contato.email, subject: "teste", from: "walter.camargo.gr@gmail.com"
  end
end
