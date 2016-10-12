class SessionsController < ApplicationController
  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end
    redirect_to root_path
  end
  
  
  def destroy
    session.clear
    redirect_to root_path
  end
end


# if user = User.find_or_create_from_auth_hash(auth)
#   session[:user_id] = user.id 
# end 
# redirect_to dashboard_index_path

