module EmailsHelper

  def sending_notification_to_All(email)
    User.all.each do |user|
      LetterMailer.email(user,email)
    end

  end
end
