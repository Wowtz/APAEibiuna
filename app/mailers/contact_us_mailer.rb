class ContactUsMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_email(user)
    @user = user
    mail(:to => "walter.camargo.gr@gmail.com",
         :subject => "Contato realizado pelo site APAE Ibiúna")
  end
end
