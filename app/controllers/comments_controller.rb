class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comments_params)
    @comment.authorname = User.find(current_user.id).profile.nickname
    if @comment.save
      redirect_to user_path(current_user.id), flash: { success: t('flash.comment.create')}
    else
      @error_comment = @comment.comment
      redirect_to post_path(@post.id)
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:comment)
  end
end
