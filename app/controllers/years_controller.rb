class YearsController < ApplicationController
  def index
    years = Year.all
    @years = years.sort { |a,b| a.year <=> b.year }
    @year = Year.new
    render :index
  end
  def show
    @years = Year.all
    @year = Year.friendly.find(params[:id])
    @book = Book.new
    @note = Note.new

    # Create functionality for 'previous'/'next' in each year
    @sorted_years = @years.sort { |a,b| a.year <=> b.year }
    @host_index = @sorted_years.index(@year)
    @previous_year = @sorted_years[@host_index - 1].year
    if @host_index === @sorted_years.length - 1
      @next_year = 'undefined'
    else
      @next_year = @sorted_years[@host_index + 1].year
    end
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
        book_ids = year.book_ids.push(@book[0].id)
        year.update({:book_ids => book_ids})
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
