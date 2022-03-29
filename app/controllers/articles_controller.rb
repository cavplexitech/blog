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

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  def search
    @articles = Article.search do
      keywords(params[:query])
    end.results

    respond_to do |format|
      format.html { render action: 'search' }
      format.xml { render xml: @articles }
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :status, user: current_user)
  end
end
