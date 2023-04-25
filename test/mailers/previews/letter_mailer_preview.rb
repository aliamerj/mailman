# Preview all emails at http://localhost:3000/rails/mailers/letter_mailer
class LetterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/letter_mailer/email
  def email
    LetterMailer.email
  end

end
