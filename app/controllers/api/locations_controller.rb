class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render 'index.json.jbuilder'
  end
  def show
    @location = Location.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @location = Location.new(
      room: params[:room]
      )
    if @location.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @location.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @location = Location.find(params[:id])
    @location.room = params[:room] || @location.room

    if @location.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @location.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    render json: {message: "#{@location.room} successfully deleted."}
  end
end
