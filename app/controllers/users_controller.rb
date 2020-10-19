class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user_id = params[:id]
        #{id: params[:id]}
        if session_user == user_id.to_i
        #user_id[:id]
        user = User.find_by(user_id)
        render json: user
        else
        render json: { errors: "token doesn't match user"}
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user.id)
            render json: { token: token, user_id: user.id }
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

  private

    def user_params
     params.permit(:name, :password)
    end


end
