class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :except => [:home]
  protect_from_forgery prepend: true
  
  helper_method :user_signed_in?, :current_user
  # scope :user_session

end
