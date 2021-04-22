class Api::V1::QuestionPromptsController < ApplicationController

    def index
        questions = QuestionPrompt.all
        render json: questions
    end
    
    def show
        question = QuestionPrompt.find(params[:id])
        render json: question
    end

    def find_topic
        topic = QuestionPrompt.where(topic: params[:topic])
        render json: topic.sample
    end

    

end