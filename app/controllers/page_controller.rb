class PageController < ApplicationController
  def home
    
  end
  def login
    
  end
  def logout
    session[:user_id] = nil
    redirect_to login_path
  end
end
