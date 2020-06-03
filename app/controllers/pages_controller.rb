class PagesController < ApplicationController
  # before_action :authenticate_user!, :except => [:home]
  def home
   if after_sign_out_path_for(destroy_user_session_path)
   end
  end

  def user_profile
   
  end

  def feed
   if after_sign_in_path_for(user_session_path)
   else
    redirect_to new_user_registration
   end
  end
  

  
end