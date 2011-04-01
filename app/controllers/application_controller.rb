class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login
    if current_admin
      redirect_to "/home"
    else
      redirect_to "/login"
    end
  end
  
end
