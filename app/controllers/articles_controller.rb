class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    #@article = Article.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
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
