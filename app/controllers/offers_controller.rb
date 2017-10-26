class OffersController < ApplicationController
  before_action :set_user

  def create
    @offer = @user.offers.create!(request_id: params[:request_id],
                                  status: 0
                                 )

    redirect_to requests_path
  end

  private

  def set_user
    @user = current_user
  end

end
