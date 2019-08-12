class Image < ApplicationRecord
    def change
        create_table    :image do |t|
            t.integer   :courses
        end
end
