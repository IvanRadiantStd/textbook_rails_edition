class SubjectsController < ApplicationController

	def index

		@subjects = Subject.all

	end

	def new
		@subject = Subject.new
	end

	def create
		
		@subject = Subject.new(subject_params)

		if @subject.save
		  redirect_to "/"
		else
		  render :new
		end

	end

	def edit
		@subject = Subject.find(params[:id])
	end

	def update
		@subject = Subject.find(params[:id])
		if @subject.update_attributes(subject_params)
			render :edit
		else
			render :edit
		end
	end



	private

	  def subject_params
	  	params.require(:subject).permit(:title, :all_themes_title);
	  end

end