class InvitesController < ApplicationController

  def new
    @invite = Invite.new
  end

  def create
    @invite = Invite.new(event_id: params[:event_id], creator_id: params[:creator_id], attendee_id: params[:attendee_id])

    if @invite.save
      redirect_to show_event_path
    end
  end

  def update
    @invite = Invite.find(params[:invite_id])
    @invite.accepted!
    redirect_to show_event_path
  end

  

  private

  def invite_params
    params.require(:invite).permit(event_id: event_id, creator_id: creator_id, attendee_id: attendee_id)
  end
  
end
