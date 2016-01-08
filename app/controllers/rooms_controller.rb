class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

def index
      @rooms = Room.all
    end

def show
   @reservation = @room.reservations.new
    end

def new 
  @room = current_user.rooms.new
end 

def create
@room = current_user.rooms.build(room_params)

if @room.save

      redirect_to rooms_path
    else 
      render :new 
    end 
  end 

def update 
@room = Room.find(params[:id]) 
      
      if @room.update_attributes(room_params)
        redirect_to rooms_path, notice: "Your listing has been created..."
    else
      render :edit
    end

    
  end

  def destroy 
      @room.destroy 
      redirect_to rooms_path
    end

private
    def set_room
      @room = Room.find(params[:id])
    end
    def room_params
      params.require(:room).permit(:address, :price, :summary, :user_id)
    end
end 