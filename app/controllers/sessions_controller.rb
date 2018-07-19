class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
=begin
#Some other guy's code:  
  def google_oauth2
  # You need to implement the method below in your model (e.g. app/models/user.rb)
  @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
  
    if @user.persisted?
    flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
    sign_in_and_redirect @user, :event => :authentication
    else
    session["devise.google_data"] = request.env["omniauth.auth"]
    redirect_to new_user_registration_url
    end
  end
=end
end
