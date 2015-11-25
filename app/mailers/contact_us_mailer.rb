class ContactUsMailer < ActionMailer::Base
  default from: "irishbusroutes@gmail.com"
  default to: "deebloomer@hotmail.com" #"georgeomalleyplastering@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us_mailer.query.subject
  #
  def contact_us(contact_us)
    @contact_us = contact_us
    mail(:subject => "O'MalleyPlastering #{contact_us.subject}")
  end
end


