class RequestsController < ApplicationController

  def index
    @user = current_user
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
    @request = Request.find(params[:id])
  end

  private

  def request_params
    params.require(:request).permit(:title, :day, :start_time, :duration, :location, :description)
  end

end
