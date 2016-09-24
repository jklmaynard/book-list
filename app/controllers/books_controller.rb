class BooksController < ApplicationController
  before_filter :authorize
  def index
    books = Book.all
    @books = books.sort { |a,b| a.author_last_name.downcase <=> b.author_last_name.downcase }
    render :index
  end
  def show
    @book = Book.friendly.find(params[:id])
    @year = Year.new
    @note = Note.new
  end
  def new
    @book = Book.new
    years = Year.all
    @years = years.sort { |a,b| a.year <=> b.year }
  end
  def create
    @books = Book.all
    @book = Book.new(book_params)
    @year = Year.find(@book.year_ids)

    @books.each do |book|
      if @book.title === book.title
        @book.destroy
        redirect_to book_path(book) and return
      end
    end

    if @book.save
      redirect_to year_path(@year)
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author_first_name, :author_last_name, :year_ids)
  end
end
