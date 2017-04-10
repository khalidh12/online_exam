class Ecet < ActiveRecord::Base
	paginates_per 1
	mount_uploader :qimage, QimageUploader
end
