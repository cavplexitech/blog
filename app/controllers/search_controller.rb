class SearchController < ApplicationController
  def show
    @articles = Article.search do
      keywords(params[:query])
    end.results

    @profiles = Profile.search do
      keywords(params[:query])
    end.results

    @search = Array(@articles).concat(Array(@profiles))

    respond_to do |format|
      format.html { render action: 'show' }
      format.xml { render xml: @search }
    end
  end
end
