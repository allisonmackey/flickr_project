class PagesController < ApplicationController
  # before_action :authenticate_user!, :except => [:home]
  def home
   if after_sign_out_path_for(destroy_user_session_path)
   end
  end

  def user_profile
    # binding.pry
   
  end


  def add_photos
    if params[:submit]
      # binding.pry

      current_user.images.attach(params[:user][:images])
      redirect_to user_profile_path
    end
  end

  def feed
   if after_sign_in_path_for(user_session_path)
    # all_users_photos
    @users = User.all
   else
    redirect_to new_user_registration
   end
  end
  

  
end