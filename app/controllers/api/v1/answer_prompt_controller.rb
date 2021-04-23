class Api::V1::AnswerPromptController < ApplicationController
    def index
      render json: AnswerPrompt.all, root: "answer_prompt", adapter: :json, each_serializer: AnswerPromptSerializer, status: :ok
    end

    def index_by_user
      render json: AnswerPrompt.by_user_uid(current_user.id), root: "answer_prompt", adapter: :json, each_serializer: AnswerPromptSerializer, status: :ok
    end
  
    def create      
      answer_prompt = AnswerPrompt.new(answer: params[:answer], user_id: current_user.id, question_prompt_id: params[:question_prompt_id])
  
      if answer_prompt.save!
        render json: { answer_prompt: { id: answer_prompt.id } }, status: :ok
      else
        render json: { message: "save failed" }, status: :not_acceptable
      end
    end
  end
  