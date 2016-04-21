class Tool < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
end
