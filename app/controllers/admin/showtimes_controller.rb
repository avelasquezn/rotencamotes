class Admin::ShowtimesController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :all

  def default_path
    admin_showtimes_path
  end

  def index
    redirect_to admin_schedules_path
  end

  def new
    if params[:schedule_id]
	    @schedule = Schedule.find(params[:schedule_id])
	    @showtime = @schedule.showtimes.new
	    new!
	  else
	    redirect_to admin_schedules_path
	  end
  end

  def create
    create!   { admin_schedule_path(@showtime.schedule) }
  end

  def update
    update!   { admin_schedule_path(@showtime.schedule) }
  end

  def destroy
    destroy!  { admin_schedule_path(@showtime.schedule) }
  end

end

