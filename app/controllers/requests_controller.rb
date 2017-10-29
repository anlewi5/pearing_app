class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :destroy, :edit, :update, :view_request]
  before_action :set_user, except: [:request_dashboard, :view_request]
  skip_before_action :require_login, only: [:request_dashboard, :view_request]

  def index
    @requests = @user.requests
  end

  def new
    @request = Request.new
  end

  def create
    @request = @user.requests.create!(request_params)

    redirect_to user_request_path(@user, @request)
  end

  def show
  end

  def edit
  end

  def update
    @request = @user.requests.update(request_params)

    redirect_to user_request_path(@user, @request)
  end

  def destroy
    @request.destroy

    redirect_to user_requests_path(@user)
  end

  def request_dashboard
    @requests = Request.all
  end

  def view_request

  end

  private

  def request_params
    params.require(:request).permit(:title,
                                    :day,
                                    :start_time,
                                    :duration,
                                    :location,
                                    :description)
  end

  def set_request
    @request = Request.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
