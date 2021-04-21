class ApplicationController < ActionController::API
  #   before_action :authorized

  #   def current_user
  #     if decoded_token
  #       user_id = decoded_token[0]["user_id"]
  #       @user = User.find_by(id: user_id)
  #     end
  #   end

  #   def logged_in?
  #     !!current_user
  #   end

  #   def authorized
  #     render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  #   end

  #   def current_user(uid)
  #     @user = User.find_by(uid: uid)
  #   end
end
