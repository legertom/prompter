module Api
    module V1
      class PromptsController < ApplicationController
        protect_from_forgery with: :null_session
  
        def index
          prompts = Prompt.all
          render json: prompts, status: :ok
        end
  
        def show
          prompt = Prompt.find(params[:id])
          render json: prompt, status: :ok
        rescue ActiveRecord::RecordNotFound
          render json: { error: "Prompt not found" }, status: :not_found
        end
      end
    end
  end
  