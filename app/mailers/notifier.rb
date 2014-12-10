class Notifier < ActionMailer::Base
  default from: "admin@brycen.com.vn"
  def send_confirmation(user)
    mail(:to => user.email, :subject => I18n.t("mailer.account.confirmation_title"))
  end
end
