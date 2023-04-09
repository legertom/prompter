class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @prompt = Prompt.find(params[:prompt_id])
        @comment = @prompt.comments.create(comment_params.merge(user: current_user))
        redirect_to prompt_path(@prompt)
    end

    def comment_params
        params.require(:comment).permit(:content)
    end
end
