class AttendancesController < ApplicationController
  # def new
  #   @event = Event.find(params[:id])
  #   if @event.attendees.include?(current_user)
  #     redirect_to @event, notice: "You are already on the list"
  #   else
  #     @event.attendees << current_user
  #     redirect_to @event
  #   end
  # end

  # def destroy
  #   @event = Event.find(params[:id])
  #   @event.attendees.delete(current_user)
  #   redirect_to @event, notice: "You are no longer attending this event"
  # end
end
