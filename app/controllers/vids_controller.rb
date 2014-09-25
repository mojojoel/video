class VidsController < ApplicationController

	def create
		@vid = Vid.new(vid_params)
		@vid.save
		redirect_to @vid
	end

	def new
		@vid = Vid.new
	end

	def index
		@vids = Vid.all
	end

	def show
		@vid = Vid.find(params[:id])
	end

	def edit
		@vid = Vid.find(params[:id])
	end

	def update
		@vid = Vid.find(params[:id])
		@vid.update(vid_params)
		redirect_to @vid, notice: 'EDITED'
	end

	def destroy
		@vid = Vid.find(params[:id])
		@vid.destroy
		redirect_to @vid
	end

	private
	def vid_params
  		params.require(:vid).permit(:title, :link)
    end
end
