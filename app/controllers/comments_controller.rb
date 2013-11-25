class CommentsController < ApplicationController

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  def new
    @comment = Comment.new
    @article = {id: params[:article_id]}
    respond_to do |format|
      format.js
    end
  end

  def create
    article = Article.find_by_id(params[:article_id])
    @comment = article.comments.build(params[:comment])
    if @comment.save
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
    else
      respond_to do |format|
        format.html {render :action => :new}
        format.js {render :action => :new}
      end
    end
  end

end
