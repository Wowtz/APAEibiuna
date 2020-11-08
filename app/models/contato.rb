class Contato < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true

  def headers 
    {
    subject: "My Contact Form",
    to: "walter.camargo.gr@gmail.com" ,
    from: %("#{name}" <#{email}>)
    }
  end
end