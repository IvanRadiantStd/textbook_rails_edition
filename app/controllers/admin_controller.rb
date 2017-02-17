class AdminController < ApplicationController

	def index

		@courses = Course.all

	end

end