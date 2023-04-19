class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_commentable
    
    def create
        @comment = @commentable.comments.create(comment_params.merge(user: current_user))
        redirect_to @commentable
      end

      def destroy
        @comment = Comment.find(params[:id])
        @commentable = @comment.commentable
    
        if @comment.destroy
          redirect_to @commentable, notice: "Comment was successfully deleted."
        else
          redirect_to @commentable, alert: "Error deleting comment."
        end
      end
    
      private
    
      def set_commentable
        resource, id = request.path.split('/')[1, 2]
        @commentable = resource.singularize.classify.constantize.find(id)
      end
    
      def comment_params
        params.require(:comment).permit(:content)
      end
end
