class LetterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.letter_mailer.email.subject
  #
  def email(user, email)
    @user = user
    @email = email

    mail to: user.email, subject: email.subject
  end
end
