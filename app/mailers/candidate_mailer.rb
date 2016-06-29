class CandidateMailer < ActionMailer::Base
  default from: "shimpiatul@hotmil.com"
  layout 'mailer'

  def on_board_completion(candidate)
    @candidate = candidate

    puts "sending mail"
    mail(to: @candidate.email, subject: 'Complete on-boarding process')
    #mail(to: 'myself_2014@hotmail.com', subject: 'Complete on-boarding process')
  end
end
