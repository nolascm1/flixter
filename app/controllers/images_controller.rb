class ImagesController < ApplicationController
    before_action :authenticate_user!

    def create
        @course = Course.find(params[:image])
    end 
end
