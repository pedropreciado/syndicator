class Api::EventsController < ApplicationController

  def index
    p "$$$$$$$$$$$$$$$$$$$$ => #{current_user}"
    @events = current_user.events
  end

  def create
    @event = Event.new(event_params)
    @event.author_id = current_user.id
    if @event.save
      Job.new({
        name: @event.name
        description: @event.description,
        start_time: @event.start_time,
        end_time: @event.end_time,
        time_zone: @event.time_zone,
        }).save
      render "api/events/show", event: @event
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def destroy
    @event = Event.all.find(params[:id])
    if @event.destroy!
      render :index
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def update

    @event = Event.find([params[:id]])
    if @event.update_attributes(event_params)
      render :index
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.permit(:name, :description, :start_date, :end_date, :start_time, :end_time, :time_zone)
  end

end
