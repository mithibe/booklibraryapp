class BorrowingsController < ApplicationController
  before_action :set_book

  def new
    @borrowing = @book.borrowings.new
  end

  def create
    @borrowing = @book.borrowings.new(borrowing_params)
    if @borrowing.save
      redirect_to @book, notice: 'Book borrowed successfully.'
    else
      render :new
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name, :borrowed_on)
  end

  def mark_returned
    @borrowing = Borrowing.find(params[:id])
    if @borrowing.update(returned_on: Date.today)
      redirect_to book_path(@borrowing.book), notice: 'Book returned successfully.'
    else
      redirect_to book_path(@borrowing.book), alert: 'Could not mark as returned.'
    end
  end

  def borrower_history
    @borrower_name = params[:borrower_name]
    @borrowings = Borrowing.where(borrower_name: @borrower_name).order(borrowed_on: :desc)
  end
end
