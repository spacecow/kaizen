class BooksController < ApplicationController

  def index
    @books = Book.includes(:authors).order('authors.name', 'books.id')
  end

end
