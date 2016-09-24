class YearsController < ApplicationController
  def index
    years = Year.all
    @years = years.sort { |a,b| a.year <=> b.year }
    @year = Year.new
    render :index
  end
  def show
    @year = Year.friendly.find(params[:id])
    @book = Book.new
    @note = Note.new
  end
  def new
    @year = Year.new
    @books = Book.all
  end
  def create
    @years = Year.all
    @year = Year.new(year_params)
    @book = Book.find(@year.book_ids)

    @years.each do |year|
      if @year.year === year.year
        year.book_ids = @year.book_ids
        @year.destroy
        redirect_to year_path(year) and return
      end
    end

    if @year.save
      redirect_to '/'
    else
      render :new
    end
  end

  private
  def year_params
    params.require(:year).permit(:year, :book_ids)
  end
end
