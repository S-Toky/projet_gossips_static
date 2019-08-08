class PageController < ApplicationController
  def home
  	@gossip = Gossip.all
  	@user = User.all
  end

  def welcome
  	@first_name = params[:first_name]	
  end

  def profil
  	@gossips =  Gossip.all

  end
end
