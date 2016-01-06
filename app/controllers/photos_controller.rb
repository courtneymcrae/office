class PhotosController <ApplicationController
	def destroy 
		@photo = photo.find(params[:id])
		room = @photo.room

		@photo.destroy
		@photo = Photo.where(room_id: room.id)

		respond_to :js 
	end 
end 