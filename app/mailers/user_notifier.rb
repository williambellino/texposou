class UserNotifier < ApplicationMailer
  default from: 'contact@texposou.fr'

  def send_registration_email(visit)
    @visit = visit

    mail(to: @visit.user.email, subject: 'Vous avez fait une demande pour assister à une exposition' )
  end

  def send_request_email(exhibition)
    @exhibition = exhibition
    @place      = exhibition.place
    @artist     = exhibition.artist

    mail(to: @place.user.email, subject: "Vous avez reçu une demande de #{@artist.username} !" )
  end
end
