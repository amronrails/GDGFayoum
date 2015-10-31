class Member < ActiveRecord::Base

	#associations
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
	has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
	acts_as_list
	#validation
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :avatar2, content_type: /\Aimage\/.*\Z/

end
