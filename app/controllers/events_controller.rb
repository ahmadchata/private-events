class EventsController < ApplicationController
  include EventsHelper
  before_action :require_login, except: [:index]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "Event '#{@event.name}' created!"
      redirect_to @event
    else
      flash[:alert] = "Something went wrong!"
      render 'new'
    end
  end

  def attendance
    @event = Event.find(params[:id])
    if @event.attendees.include?(current_user)
      redirect_to @event, notice: "You are already on the list"
    else
      @event.attendees << current_user
      redirect_to @event
    end
  end

  def cancel_attendance
    @event = Event.find(params[:id])
    @event.attendees.delete(current_user)
    redirect_to @event, notice: "You are no longer attending this event"
  end
end
