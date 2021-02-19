class ApplicationController < ActionController::API

    before_action :veryify_auth

    def veryify_auth
        if !request.headers["Authorization"]
            render json: {message: "Unauthorized"}, status: :unauthorized
        else
            token = request.headers["Authorization"].split(" ")[1]
            secret = Rails.application.secrets.secret_key_base

            begin
                decoded_token = JWT.decode(token, secret)
                payload = decoded_token.first
                user_id = payload['user_id']
                @user = User.find(user_id)
            rescue
                render json: {message: "Unauthorized"}, status: :unauthorized
            end
        end
        
    end
    
end
