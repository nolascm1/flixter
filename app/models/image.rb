class Image < ApplicationRecord: :Base
    mount_uploader :image, PictureUploader
end 

    def change
        create_table    :image do |t|
            t.integer   :courses
        end
end
