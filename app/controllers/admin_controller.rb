class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def show
    @articles = Article.all
    @profiles = Profile.all
  end

  private

  def authenticate_admin
    redirect_to root_path, alert: 'Requires admin access' unless current_user.has_role? :admin
  end
end
