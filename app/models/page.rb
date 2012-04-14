class Page < ActiveRecord::Base

	validates_presence_of :name

	belongs_to :subject
	has_many :sections
	has_and_belongs_to_many :editors, :class_name => "AdminUser"
end
