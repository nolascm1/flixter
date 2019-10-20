class ImagesController < ApplicationController
    before_action :authenticate_user!

    def create
        @image = Image.find(params[:image_id])
        @image.course.create(course_params.merge(user: current_user))
        redirect_to course_path(@course)
    end

  private

  def course_params
    params.require(:course).permit(:image)
  end
end