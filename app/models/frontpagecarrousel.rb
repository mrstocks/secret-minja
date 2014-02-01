class Frontpagecarrousel < ActiveRecord::Base
  mount_uploader :filename, ImageUploader
end
