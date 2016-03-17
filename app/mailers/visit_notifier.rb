class VisitNotifier < ApplicationMailer
  default from: 'contact@texposou.fr'

  def send_registration_email(visit)
    @visit = visit

    debugger

    mail(to: @visit.user.email, subject: 'Vous avez fait une demande pour assister à une exposition' )
  end
end
