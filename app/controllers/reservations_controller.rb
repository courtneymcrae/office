class ReservationsController < ApplicationController

	def new
		@room=Room.find(params[:room_id])
		@reservation = current_user.reservations.new
	end

	def create
		@room=Room.find(params[:room_id])
		@reservation = current_user.reservations.build(reservation_params)
		if @reservation.save
		 redirect_to @reservation.room, notice: "Your reservation has been created..."
		else
		 render :new, notice: "Something went wrong!"
		end
	end 

	
	def destroy 
	  @reservation = Reservation.find(params[:id])
      @reservation.destroy 
      redirect_to user_path(current_user)
    end

	private
	def reservation_params
		params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id, :user_id )
		
	end
end 