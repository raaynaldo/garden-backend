class Api::V1::GoalsController < ApplicationController
#  skip_before_action :authorized, only: [:index, :show, :create]

  def index
    render json: Goal.all, root: "goals", adapter: :json, each_serializer: GoalSerializer, status: :ok
  end

  def index_by_user
    render json: Goal.by_user_uid(current_user.id).order(created_at: :desc), root: "goals", adapter: :json, each_serializer: GoalSerializer, status: :ok
  end

  def create
    goal = Goal.new(task: params[:task], user_id: current_user.id)

    if goal.save!
      render json: { goal: { id: goal.id } }, status: :ok
    else
      render json: { message: "save failed" }, status: :not_acceptable
    end
  end
end
