class BookPresenter < BasePresenter
  presents :book

  def author_names; book.authors.map(&:name).join(', ') end
  def author_ids; book.authors.map(&:id).join(', ') end

end
