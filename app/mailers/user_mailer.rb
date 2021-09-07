class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.postcode.subject
  #
  def postcode(@user, @event)
    @greeting = "Hi"

    mail(to: @user.email, subject: 'The postcode to your mystery has been revealed')
  end
end
