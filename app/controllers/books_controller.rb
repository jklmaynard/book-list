class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end
  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
    @year = Year.all
  end
  def create
    @book = Book.new(book_params)
    @year = Year.find(@book.year_ids)
      if @book.save
        redirect_to year_path(@year)
      else
        render :new
      end
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :year_ids)
    end

end
