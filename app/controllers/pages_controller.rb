class PagesController < ApplicationController
  # before_action :authenticate_user!, :except => [:home]
  def home
    puts 'something'
  end

  def user_profile
    # if session[:current_user]
 
    # else 
    #   render :home
    # end
  end

  def feed
    #binding.pry
    if params[:commit]
    else 
      flash[:alert] = "You'll need to sign up to see this page!"
      redirect_to 'home'
    end
  end
  

  
end