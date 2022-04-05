class ArticlesController < ApplicationController
  # before_action :require_login!, except: %i[index show search destroy]

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
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save # if save was success
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit # edit an article
    @article = Article.find(params[:id])
  end

  def update # update new article
    @article = Article.find(params[:id])

    if @article.update(article_params) # if update was success
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def like
    @article = Article.find(params[:id])
    Like.create(user: current_user, article: @article)

    redirect_to @article 
  end

  def unlike
    @article = Article.find(params[:id])
    @like = Like.find_by(user: current_user, article: @article)
    @like.destroy 

    redirect_to @article 
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    @article.errors

    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status) # user: current_user)
  end
end
