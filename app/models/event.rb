class Event < ActiveRecord::Base
	acts_as_list

	#associations
	has_attached_file :image, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/missing.png"
	has_attached_file :image2, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/missing.png"
	has_attached_file :image3, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/missing.png"
	has_attached_file :image4, styles: { medium: "300x300>", thumb: "50x50#" }, default_url: "/images/:style/missing.png"

	#validation
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :image2, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :image3, content_type: /\Aimage\/.*\Z/
	validates_attachment_content_type :image4, content_type: /\Aimage\/.*\Z/
end
