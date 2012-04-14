class Section < ActiveRecord::Base


	belongs_to :page
	has_many :section_edits
	has_many :editors, :through => section_edits, :class_name => "AdminUser"


	CONTENT_TYPES = ['text', 'HTML']

	validates :name, :presence => true
end
