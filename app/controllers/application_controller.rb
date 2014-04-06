class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
 
	def set_locale
	  if params[:lang]
	  	I18n.locale = params[:lang]
    	session[:lang] = I18n.locale
    else
    	I18n.locale = session[:lang] || I18n.default_locale
    	session[:lang] = I18n.locale
  	end
	end

	protected
  def set_layout
  	case
  	when admin_signed_in?
  		"admin"
  	when user_signed_in?
  		"admin"
  	else
  		"application"
  	end
  end
end
