class Dogimage < ActiveRecord::Base
	belongs_to :dog
  mount_uploader :filename, ImageUploader
end
