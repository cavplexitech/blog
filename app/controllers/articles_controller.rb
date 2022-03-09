class ArticlesController < ApplicationController
  def index # home page
    @articles = Article.all
  end

  def show # show an article
    @article = Article.find(params[:id])
  end

  def new # new instance of Article
    @article = Article.new
  end

  def create # create new article
    @article = Article.new(title: "...", body: "...")
    
    if @article.save # if save was success
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
