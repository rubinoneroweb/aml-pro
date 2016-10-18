class Metalwork < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    
    belongs_to :machine
    belongs_to :tool
end
