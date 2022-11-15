class CommentsController < InheritedResources::Base
  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new(announcements_id: params[:announcements_id])
    @announcement = Announcement.find(params[:announcements_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user
    @announcement_id = params[:id]
    if @comment.save
      flash[:notice] = "comment created."
      redirect_to '/announcements'
    else
      flash[:error] = "Error creating comment."
      redirect_to '/announcements'
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    @comment.update(comment_params)
    flash[:notice] = "Comment updated."
    redirect_to '/announcements'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/announcements'
  end

  private

    def comment_params
      params.require(:comment).permit(:comment, :user_id, :announcement_id)
    end

end
