class Machine < ActiveRecord::Base
    
    mount_uploader :picture, PictureUploader
end
