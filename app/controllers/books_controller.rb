class BooksController < ApplicationController

  def index
    @books = Book.includes(:authors).order('authors.name', 'books.id')
  end

  def with_quantity
    @books = Book.joins('left outer join copies on copies.book_id = books.id').select('books.id', 'copies.book_id', 'books.title').group_by(&:id)
  end

end
