class Course < ApplicationRecord
	validates :title, presence: true
	has_many :subjects

	def all_subjects
		self.subjects.map(&:title).join(', ')
	end

	def all_subjects=(titles)
		self.subjects = titles.split(',').map do |title|
			Subject.where(title: title.strip).first_or_create! 
		end
	end
	
end
