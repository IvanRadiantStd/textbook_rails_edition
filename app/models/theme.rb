class Theme < ApplicationRecord
	belongs_to :subject, optional: true
	validates :title,  presence: true
end
