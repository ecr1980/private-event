class EventsController < ApplicationController

  def index
    @events = Event.all
    
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    @users = User.all
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to users_show_path
    else
      redirect_to new_event_path
    end
  end

  def update
    @invite = Invite.find(params[:invite_id])
    @invite.update(:attending => params[:accepting])
    redirect_to show_event_path
  end

  private

  def event_params
    params.require(:event).permit(:when, :title, :body)
  end

  
end
