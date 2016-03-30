class CarImage < ActiveRecord::Base
	
	belongs_to :car
	has_attached_file :photo, :styles => { :small => "150x150>", :large => "320x240>" }
	#validates_attachment_presence :photo
	validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_size :photo, :less_than => 5.megabytes
	#validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
