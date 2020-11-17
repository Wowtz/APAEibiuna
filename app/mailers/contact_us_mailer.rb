class ContactUsMailer < ActionMailer::Base
  helper RentsHelper


  default from: "from@example.com"

  def contact_email(user)
    @user = user
    mail(:to => "walter.camargo.gr@gmail.com",
         :subject => "Contato realizado pelo site Asstam")
  end
end
