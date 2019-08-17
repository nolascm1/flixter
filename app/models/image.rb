class Image < ApplicationRecord: :Base
    mount_uploader :picture, PictureUploader
end 
    def change
        create_table    :image do |t|
            t.integer   :courses
        end
end
