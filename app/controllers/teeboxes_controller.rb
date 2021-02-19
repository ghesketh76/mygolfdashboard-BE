class TeeboxesController < ApplicationController

    skip_before_action :veryify_auth
    def index 
        @teeboxes = Teebox.all
        render json: @teeboxes
    end
end
