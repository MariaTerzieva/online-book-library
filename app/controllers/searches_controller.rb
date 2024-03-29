class SearchesController < ApplicationController
  before_filter :authorize

  def new
    @search = Search.new
  end
  
  def create
    @search = Search.create!(search_params)
    redirect_to @search
  end
  
  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :genre, :min_pages, :max_pages)
  end
end