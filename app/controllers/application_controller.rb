class ApplicationController < ActionController::Base
  helper_method :user_signed_in?, :current_user
end
