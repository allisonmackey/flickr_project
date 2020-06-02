class PagesController < ApplicationController

  def home
    puts 'something'
  end

  def users_homepage
    binding.pry 
    if session[:current_user]
 
    else 
      render :home
    end
  end
  

  
end