class CommentsController < ApplicationController
  def index
    @link = Link.find(params[:link_id])
    @comments = Comment.all
    redirect_to link_path(@link)
  end

  def show
    @link = Link.find(params[:link_id])
    @comment = Comment.find(params[:id])
    render :show
  end

  def new
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new
    render :new
  end

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comments_params)
    if @comment.save
      redirect_to link_path(@comment.link)
    else
      render :new
    end
  end

  def edit
    @link = Link.find(params[:link_id])
    @comment = Comment.find(params[:id])
      render :edit
  end

  def update
    @link = Link.find(params[:link_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to link_path(@comment.link)
    else
      render :edit
    end
  end

  def destroy
    @link = Link.find(params[:link_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to link_path(@comment.link)
  end

  private
  def comments_params
    params.require(:comment).permit(:name, :message, :link_id)
  end

end
