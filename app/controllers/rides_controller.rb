class RidesController < ApplicationController

  def create
    ride = Ride.new(ride_params)
    flash[:message] = ride.take_ride
    redirect_to user_path(User.find(params[:ride][:user_id]))
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
