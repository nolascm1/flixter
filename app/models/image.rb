class Image < ApplicationRecord: :Base
    mount_uploader :image, PictureUploader
    belongs_to  :user
    belongs_to  :course
end 

    def change
        create_table    :image do |t|
            t.integer   :courses
        end
end
