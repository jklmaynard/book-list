class YearsController < ApplicationController
  def index
    @years = Year.all
    render :index
  end
  def show
    @year = Year.find(params[:id])
    @book = Book.new
    @note = Note.new
  end
  def new
    @year = Year.new
    @books = Book.all
  end
  def create
    @year = Year.new(year_params)
    @book = Book.find(@year.book_ids)
      if @year.save
        redirect_to book_path(@book)
      else
        render :new
      end
  end

  private
    def year_params
      params.require(:year).permit(:year, :book_ids)
    end


end
