class ImagesController < ApplicationController
    before_action :authenticate_user!

    def create
        @course = Course.find(params[:course_id, :image])
        @course.images.create(image_params.merge(user: current_user))
        redirect_to course_path(@course)
    end 

    private

    def image_params
        params.require(:image)
    end
end
