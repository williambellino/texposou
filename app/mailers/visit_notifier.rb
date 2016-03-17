class VisitNotifier < ApplicationMailer
  default from: 'contact@texposou.fr'

  def send_registration_email(user)
    @user = user
    mail(to: @user.email, subject: '' )
  end
end
