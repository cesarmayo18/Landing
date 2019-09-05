class HomeController < ApplicationController
  def index;end

  def welcome
    @user=params['user']
  end
end
