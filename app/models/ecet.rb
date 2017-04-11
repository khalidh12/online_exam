class Ecet < ActiveRecord::Base
	# paginates_per 1
	 attr_accessor :optiona
	 attr_accessor :optionb
	 attr_accessor :optionc
	 attr_accessor :optiond
	 has_attached_file :optiona, styles: { medium: "150x150>", thumb: "80x80>" }
	has_attached_file :optionb, styles: { medium: "150x150>", thumb: "80x80>" }
	has_attached_file :optionc, styles: { medium: "150x150>", thumb: "80x80>" }
	has_attached_file :optiond, styles: { medium: "150x150>", thumb: "80x80>" }
	
	 validates_attachment_content_type :optiona, content_type: /\Aimage\/.*\z/
	 validates_attachment_content_type :optionb, content_type: /\Aimage\/.*\z/
	 validates_attachment_content_type :optionc, content_type: /\Aimage\/.*\z/
	 validates_attachment_content_type :optiond, content_type: /\Aimage\/.*\z/
	 # do_not_validate_attachment_file_type :optiona,:optionb,:optionc,:optiond
	# validates_attachment_content_type :optiona, :optionb, :optionc, :optiond, content_type: /\Aimage\/.*\z/ 
	
	# has_attached_file :avatar, styles: { medium: "150x150>", thumb: "80x80>" }
	mount_uploader :qimage, QimageUploader
	# mount_uploader :optiona, OptionaUploader
	# mount_uploader :optionb, OptionbUploader
	# mount_uploader :optionc, OptioncUploader
	# mount_uploader :optiond, OptiondUploader

end
