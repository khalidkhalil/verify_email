class VerifyController < ApplicationController
    before_action :authenticate_user!
    require 'open-uri'

    def get_email
        if params[:email]
            if Request.last && Request.last.created_at > 5.second.ago
                render json: {"limit": true} and return 
            end
        Request.create(user_id: current_user.id,email: params[:email].to_s)
        token = "d0ad5ade5fbf40b6c204d7455166976b"
        email = params[:email].to_s
        url = "http://apilayer.net/api/check?access_key=#{token}&email=#{email}"       
        contents = open(url).read
        @parsed_json = JSON.parse(contents)
        render json: @parsed_json
        end
    end


    def post_email
       
    end
end
