class Admin::HomeController < ApplicationController
  layout      'admin'
  before_filter :authenticate_admin!
  
  def index
  end
end

