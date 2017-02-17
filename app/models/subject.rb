class Subject < ApplicationRecord
	belongs_to :course, optional: true
	validates :title, presence: true
	has_many :themes

	def all_themes_title
		self.themes.map(&:title).join(', ')
	end

	def all_themes_title=(titles)
		self.themes = titles.split(',').map do |title|
			Theme.where(title: title.strip).first_or_create! 
		end
	end



end
