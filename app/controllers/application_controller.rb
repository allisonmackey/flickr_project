class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:home]
  protect_from_forgery prepend: true
  
  # helper_method :user_signed_in?, :current_user
  # scope :user_session

  def after_sign_in_path_for(resource)
    feed_path
  end

  def after_sign_out_path_for(resource)
    home_path
  end



end
