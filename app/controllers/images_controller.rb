class ImagesController < ApplicationController
    before_action :authenticate_user!

    def create
        @course = Course.find(params[:course_id, :image])
    end 

    private

    def image_params
        params.require(:image)
    end
end
