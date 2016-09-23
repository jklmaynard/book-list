class BooksController < ApplicationController
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
