class Library
  attr_accessor :books
  def initialize()
    @books = Array.new
  end

  def add_book(book:)
    add(book)
  end

  def remove_book(book:)
    @books.delete(book)
  end

  def list_books()
    list()
  end

  private
  def add(book)
    @books.push(book)
  end

  def list()
    puts @books
  end
end

library = Library.new
library.add_book(book: "A")
library.add_book(book: "B")
library.add_book(book: "C")
library.remove_book(book: "B")
library.list_books
