class OffersController < ApplicationController
  before_action :set_user
  before_action :set_offer, only: [:accept, :decline]

  def index
    @offers = @user.offers
  end

  def create
    @offer = @user.offers.create!(request_id: params[:request_id],
                                  status: 0
                                 )

    redirect_to requests_path
  end

  def accept
    @offer.update! status: 1

    redirect_to user_requests_path(@user)
  end

  def decline
    @offer.update! status: 2

    redirect_to user_requests_path(@user)
  end

  private

  def set_user
    @user = current_user
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

end
