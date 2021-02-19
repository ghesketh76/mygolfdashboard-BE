class NewroundsController < ApplicationController

    def index 
        @newrounds = Newround.all 
        render json: @newrounds
    end

    def create 
        @newround = Newround.create(
            golfcourse_id: params[:golfcourse_id],
            user_id: params[:user_id],
            score: params[:score] 
             )
        render json: @newround
    end
end
