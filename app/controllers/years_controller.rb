class YearsController < ApplicationController
  def index
    @years = Year.all
    render :index
  end
end
