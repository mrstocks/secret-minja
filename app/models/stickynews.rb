class Stickynews < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
