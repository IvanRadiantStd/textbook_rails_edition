module CoursesHelper

	def courses_list

		courses = Course.all
		
		courses.each do |course|
			yield(course)
		end

	end

end