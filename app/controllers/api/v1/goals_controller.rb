class Api::V1::GoalsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]

  def index
    render json: Goal.all, root: "goals", adapter: :json, each_serializer: GoalSerializer, status: :ok
  end

  def index_by_user
    render json: Goal.by_user_uid(current_user.id), root: "goals", adapter: :json, each_serializer: GoalSerializer, status: :ok
  end

  def create
    puts "hi"
    puts current_user
    goal = Goal.new(task: params[:task], user_id: current_user.id)
    if goal.save!
      render json: { goal: { id: goal.id } }, status: :ok
    else
      render json: { message: "save failed" }, status: :not_acceptable
    end
  end  
  
  def update
    goal = Goal.find(params[:id])
    goal.update(task: params[:task] ? params[:task] : goal.task, is_done: params[:is_done] != nil ? params[:is_done] : goal.is_done)
    render json: { goal: goal }, status: :ok
  end

  def destroy
    goal = Goal.find(params[:id])
    goal.destroy
    render json: {message: "goal deleted"}
  end
end
