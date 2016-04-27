class Tool < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    
    belongs_to :machine
end