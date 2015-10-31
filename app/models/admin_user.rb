class AdminUser < ActiveRecord::Base
	#associations
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/missing.png"
	has_secure_password
	scope :sorted, lambda{ order("brands.id ASC") }
	#validation
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
