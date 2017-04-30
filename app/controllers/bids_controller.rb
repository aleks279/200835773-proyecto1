class BidsController < ApplicationController

  before_action :authenticate_user!

  before_action :find_property, only: [:create]
  before_action :find_user, only: [:create]

  def create
    binding.pry
    @bid = @property.bids.create(bid_params)

    redirect_to property_path(@property)
  end

  private

  def bid_params
    params.require(:bid).permit(
      :user_id,
      :property_id,
      :price_bided
    )
  end

  def find_property
    @property = Property.find(params[:property_id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
