class NewroundsController < ApplicationController

    def index 
        @newrounds = Newround.all 
        render json: @newrounds
    end

    def create 
       
        @newround = Newround.create(
            golfcourse_id: params[:golfcourse_id],
            user_id: @user.id,
            score: params[:score] 
             )
        render json: @newround
    end

    def destroy 
        @newround = Newround.find(params[:id])
        @newround.destroy
    end

    def show_rounds 
        user_rounds = Newround.all.select do |round|
            @user.id == round.user_id
        end.reverse
        
        render json: user_rounds, include: :golfcourse
    end

    def average_score
        all_rounds = Newround.all.select do |round|
            @user.id == round.user_id
        end
        average_score_array = all_rounds.last(10).map do |round|
            round.score
        end
        average_score_total = average_score_array.reduce do |acc, num|
            acc + num
        end.to_f
        average_score = average_score_total / average_score_array.length
        render json: average_score
    end
end
