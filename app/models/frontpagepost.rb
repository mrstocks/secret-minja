class Frontpagepost < ActiveRecord::Base
  mount_uploader :filename, ImageUploader
end
