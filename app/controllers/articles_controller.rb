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

  def search
    @articles = Article.search do
      keywords(params[:query])
    end.results

    respond_to do |format|
      format.html { render action: 'index' }
      format.xml { render xml: @articles }
    end
  end

  def search_daterange
    # require 'active_support/core_ext'

    from = params[:from_date]
    to = params[:to_date]

    if from > to
      redirect_to articles_path, alert: '"From" date must be less than "To" date'
      return # redirect_to does not terminate action, this is a need
    end

    @articles = Article.search do
      with(:created_at).between(from..to)
    end.results

    respond_to do |format|
      format.html { render action: 'index' }
      format.xml { render xml: @articles }
    end
  end

  def search_featured
    @articles = Article.search do
      with(:featured, true)
    end.results

    respond_to do |format|
      format.html { render action: 'index' }
      format.xml { render xml: @articles }
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

    redirect_to admin_show_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status, :featured)
  end
end
