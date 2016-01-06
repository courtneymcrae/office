class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

def index
      @rooms = Room.all
    end

def show
      @photos =@room.photos
    end

def new 
  @room = current_user.rooms.new
end 

def create 
@room = current_user.rooms.build(room_params)

if @room.save

if params[:images]
    params[:images].each do |image|
      room.photos.create(image: image)
    end 
  end 

  @photos = room.photos 
  redirect_to edit_room_path(@room), notice: "Saved..."
  else 
    render :new
    end 
  end 

  def edit 
    @photos = @room.photos 
  end 

  def update 
    if @room.update(room_params)

      if params[:images]
        params[:images].each do |image|
          room.photos.create(image: image)
        end 
      end 

      redirect_to edit_room_path(@room), notice: "Updated..."
    else 
      render :edit 
    end 
  end 

private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:address, :price, :summary, :user_id)
    end
end 