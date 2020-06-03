class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:home]
  # before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery prepend: true
  
  # helper_method :user_signed_in?, :current_user
  # scope :user_session
  # :account_update, 
  # :new_user
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:account_update) { 
  #     |u| u.permit(:profile_photo, :email, :password, :password_confirmation, :current_password)
  #   }
  # end

  # def all_users_photos 
  #   all_photos = User.all.uploaded_photos
  # end

  

  def after_sign_in_path_for(resource)
    feed_path
  end

  def after_sign_out_path_for(resource)
    home_path
  end





end
