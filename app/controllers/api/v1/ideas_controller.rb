module Api::V1
  class IdeasController < ApplicationController
    def create
      idea = Idea.create(idea_params)
      render json: idea
    end

    def index
      @ideas = Idea.all
      render json: @ideas
    end

    private
      def idea_params
        params.require(:idea).permit(:title, :body)
      end
  end
end