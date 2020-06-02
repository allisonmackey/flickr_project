# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  #GET /resource/sign_in
  def new
    super
  end

  #POST /resource/sign_in
  def create
    super
      @user = User.current_user
      if @user 
        session[:user_id] = @user.id
        render :feed
        # redirect_to '../pages/feed'
      else 
        flash[:alert] = "Looks like you're not a user, you should probably sign up!"
        redirect_to '/home'
      end
  end

  #DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
