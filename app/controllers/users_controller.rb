class UsersController < ApplicationController
	def new
	end

	def index
		@users = User.trier(params[:tri])
	end
end