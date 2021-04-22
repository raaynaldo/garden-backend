class Api::V1::QuestionPromptsController < ApplicationController
    
    def index
        questions = QuestionPrompt.all
        render json: questions
    end
    
    def show
        question = QuestionPrompt.find(params[:id])
        render json: question
    end

end