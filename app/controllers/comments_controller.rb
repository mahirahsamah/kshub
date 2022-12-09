class CommentsController < ApplicationController
    
    def index
        @comment = Comment.all
    end
    
    def create 
        @comment = current_user.comments.new(comment_params)
        if !@comment.save
            flash[:notice] = @comment.errors.full_messages.to_sentence
        end
        redirect_to announcement_path(params[:announcement_id])
    end

    def set_active_status
        @comment = Comment.find(params[:id])
        Comment.update_active_status(@comment)
        redirect_to announcements_path
    end
    
    private

    def comment_params 
        params
            .require(:comment)
            .permit(:content)
            .merge(announcement_id: params[:announcement_id])
    end
end
