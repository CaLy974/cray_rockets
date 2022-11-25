class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @rocket = Rocket.find(params[:rocket_id])
    @book.rocket = @rocket
    @book.user = current_user
    if @book.save
      redirect_to mybookings_path
    else
      redirect_to rocket_path(@rocket)
    end
  end

  def mybookings
    @user = current_user
    @books = @user.books
  end

  private

  def book_params
    params.require(:book).permit(:start_date, :end_date)
  end
end
