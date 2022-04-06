class AdminController < ApplicationController
  def show
    @articles = Article.all
    @profiles = Profile.all
  end
end
