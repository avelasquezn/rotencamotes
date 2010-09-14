class Admin::AdsController < InheritedResources::Base

  before_filter :authenticate_admin!
  respond_to    :html, :xml
  actions       :all

  def create
    create!   { admin_ads_path }
  end

  def update
    update!   { admin_ads_path  }
  end

  def destroy
    destroy!  { admin_ads_path }
  end

end

