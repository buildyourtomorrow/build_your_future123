class SessionsController < ApplicationController

  def signin
    if request.post?
      user = login(params[:username], params[:password], true)
      unless user.blank?
        redirect_to incomes_path and return
      end
    end
  end
  
  def signout
    logout
    redirect_to signin_sessions_path and return
  end

end
