class YearsController < ApplicationController
  def index
    @years = Year.all
    render :index
  end
  def show
    @year = Year.find(params[:id])
    @book = Book.new
  end
end
