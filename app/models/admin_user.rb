class AdminUser < ActiveRecord::Base

	# set_table_name("admin_user")
	has_and_belongs_to_many :pages
	has_many :sections, :through => :section_edits

	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0_9._]+\.[A-Z]{2,4}$/i

	validates :name, :presence => true, :length => {:maximum => 255}, 
	validates :username, :uniqueness => true
 	validates :email, :presence => true, :format => EMAIL_REGEX, :confirmation => true

end
