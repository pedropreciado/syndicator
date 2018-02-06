class Api::EventsController < ApplicationController

  def index
    @events = current_user.events
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render :show
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
    params.require(:skill).permit(
      :name,
      :description,
      :start_time,
      :end_time,
      :time_zone,
      :author_id
    )
  end

end
