class AppMailer < ActionMailer::Base
  
  def message(info)
    @subject        = "Mailer"
    @recipients     = "keith@keithbingman.com"
    @body           = info[:text]
    @from           = "info@horsepixx.de"
    @sent_on        = Time.now
    @headers        = {}
  end


end