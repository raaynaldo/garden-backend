class Api::V1::GoalsController < ApplicationController
  def index
    render json: Goal.all, root: "goals", adapter: :json, each_serializer: GoalSerializer, status: :ok
  end
end
