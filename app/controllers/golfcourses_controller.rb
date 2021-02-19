class GolfcoursesController < ApplicationController

    skip_before_action :veryify_auth

    def index
        @golfcourses = Golfcourse.all
        render json: @golfcourses, include: [:teeboxes]
    end

    def show
        @golfcourse = Golfcourse.find(params[:id])
        render json: @golfcourse, include: [:teeboxes]
    end

    def show_teeboxes
        @golfcourse = Golfcourse.find(params[:id])
    end
end
