class PagesController < ApplicationController
  before_action :authenticate!, only: [:dashboard]
  def home
  end

  def dashboard
  	case 
    when admin_signed_in?
      render "admin_dashboard", layout: "admin"
    end
  end
end
