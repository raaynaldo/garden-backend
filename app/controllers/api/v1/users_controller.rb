class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    users = User.all
    render json: users, root: "users", adapter: :json, each_serializer: UserSerializer, status: :ok
  end

  def create
    puts user_params
    user = User.find_by(uid: user_params[:uid])
    if user
      user.update(user_params)
      #   render json: { user: UserSerializer.new(user) }, status: :created
    else
      user = User.new(user_params)
      user.save
      #   render json: { user: UserSerializer.new(user) }, status: :created
    end
    token = encode_token(user_id: user.id)
    puts "hello " + token
    render json: { user: UserSerializer.new(user), token: token }, status: :created
  end

private

  def user_params
    params.require(:user).permit(:uid, :name, :photo_url, :email)
  end
end
