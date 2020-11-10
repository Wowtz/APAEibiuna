class Contato < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true

  def headers 
    {
    subject: "Email enviado por #{name}, endereço de email:#{email}",
    to: ENV['MAILER_TO'],
    from: ENV['MAILER_FROM']
    }
  end
end