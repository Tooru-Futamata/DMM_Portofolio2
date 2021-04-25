class ApplicationController < ActionController::Base
  before_action :set_search

  def set_search
    # @search = Article.search(params[:q])
    @search = GolfCourse.ransack(params[:q]) # ransackメソッド推奨
    @search_golf_courses = @search.result.page(params[:page])
  end
end
