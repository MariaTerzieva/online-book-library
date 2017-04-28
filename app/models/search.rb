class Search < ActiveRecord::Base
  def books
    @books ||= find_books
  end
  
private

  def find_books
    books = Book.order(created_at: :desc)
    books = books.where("title like ?", "%#{keywords}%") if keywords.present?
    books = books.where(genre: genre) if genre.present?
    books = books.where("page_count >= ?", min_pages) if min_pages.present?
    books = books.where("page_count <= ?", max_pages) if max_pages.present?
    books
  end
end