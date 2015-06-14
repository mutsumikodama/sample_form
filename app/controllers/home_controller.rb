class HomeController < ApplicationController

  def home
    @inquiry = current_user.inquiries.build if signed_in?
  end

  def index
  end

  def show
  end
end
