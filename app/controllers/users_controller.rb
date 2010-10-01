class UsersController < InheritedResources::Base
  
  before_filter :authenticate_user!
  
  respond_to    :html, :xml
  actions       :edit, :update, :show

  def default_path
    profile_path(@user.profile)
  end

  def update
    if params[:user][:password] && params[:user][:password].empty?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    
    update!   { default_path }
  end
  

end

