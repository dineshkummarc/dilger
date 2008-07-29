class MailerController < ApplicationController

  session :off 
  protect_from_forgery :except => :index
  no_login_required
  
  def index
    @info = params[:mailer]
    @page = Page.find(params[:page_id])
    if request.post?
      AppMailer.deliver_message(@info)
      redirect_to "/"  
    else
      render :text => 'Do not access this URL directly.'
    end
  end
  
end


