class BooksController < ApplicationController

  def index
    @books = Book.includes(:authors)
  end

end
