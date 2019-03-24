class Api::ItemsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @items = Item.all 
    render 'index.json.jbuilder'   
  end

  def show
    @item = Item.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @item = Item.new(
      location_id: params[:location_id],
      description: params[:description],
      model: params[:model],
      serial: params[:serial],
      price: params[:price],
      photo: params[:photo],
      date: params[:date],
      user_id: current_user.id
      )
    if @item.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find(params[:id])
    @item.location = params[:location] || @item.location
    @item.description = params[:description] || @item.description
    @item.model = params[:model] || @item.model
    @item.serial = params[:serial] || @item.serial
    @item.price = params[:price] || @item.price
    @item.photo = params[:photo] || @item.photo
    @item.date = params[:date] || @item.date

    if @item.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render json: {message: "#{@item.description} successfully deleted."}
  end
end
