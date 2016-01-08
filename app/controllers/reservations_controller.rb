class ReservationsController < ApplicationController

	def new
		@room=Room.find(params[:room_id])
		@reservation = current_user.reservations.new
	end

	def create
		@room=Room.find(params[:room_id])
		@reservation = current_user.reservations.create(reservation_params)

		redirect_to @reservation.room, notice: "Your reservation has been created..."
	end 


	private
	def reservation_params
		params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id, :user_id )
		
	end
end 