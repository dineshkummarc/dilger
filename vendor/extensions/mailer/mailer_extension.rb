# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class MailerExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/mailer"
  
  define_routes do |map|
    map.connect '/mailer/', :controller => 'mailer', :action => "index"
  end
  
  def activate
    MailerPage
  end
  
  def deactivate
    # admin.tabs.remove "Mailer"
  end
  
end