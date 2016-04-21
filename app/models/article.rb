class Article < ActiveRecord::Base
    mount_uploader :picture, PictureUploader
    mount_uploader :drawing, PictureUploader
end
