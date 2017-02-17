class ThemesController < ApplicationController

	def index
		@themes = Theme.all
	end

	def new
		@theme = Theme.new
	end

	def create
		
		@theme = Theme.new(post_params)

		if @theme.save
		  redirect_to @theme
		else
		  render :new
		end

	end

	def show
	  @theme = Theme.find(params[:id])
	end

	def edit
		@theme = Theme.find(params[:id])
	end

	def update
		@theme = Theme.find(params[:id])
		if @theme.update_attributes(post_params)
			render :edit
		else
			render :edit
		end
	end

	private

	  def post_params
	  	params.require(:theme).permit(:title,:content);
	  end

end