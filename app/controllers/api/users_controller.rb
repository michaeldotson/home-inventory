class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  
  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @user = User.new(
      f_name: params[:f_name],
      l_name: params[:l_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      phone: params[:zip]
      )
    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    @user.f_name = params[:f_name] || @user.f_name
    @user.l_name = params[:l_name] || @user.l_name
    @user.email = params[:email] || @user.email
    @user.password_digest = params[:password_digest] || @user.password_digest
    @user.address = params[:address] || @user.address
    @user.city = params[:city] || @user.city
    @user.state = params[:state] || @user.state
    @user.zip = params[:zip] || @user.zip
    @user.phone = params[:phone] || @user.phone
    if @user.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      render json: {message: "User successfully deleted."}
    end
end
