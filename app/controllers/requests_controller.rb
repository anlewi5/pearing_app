class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :destroy, :edit, :update]

  def index
    @user = current_user
    @requests = @user.requests
  end

  def new
    @user = current_user
    @request = Request.new
  end

  def create
    @user = current_user
    @request = @user.requests.create!(request_params)

    redirect_to user_request_path(@user, @request)
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @request = @user.requests.update(request_params)

    redirect_to user_request_path(@user, @request)
  end

  def destory

  end

  private

  def request_params
    params.require(:request).permit(:title, :day, :start_time, :duration, :location, :description)
  end

  def set_request
    @request = Request.find(params[:id])
  end

end
