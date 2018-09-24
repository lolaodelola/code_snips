class Book
  attr_accessor :name, :author, :date
  def initialize(name, author, date)
    @name = name
    @author = author
    @date = date
  end

  def checked_books
    check_this_book
  end

  private
  def check_this_book
    puts "This book is checked: #{@name}, #{@author}, #{@date}"
  end
end

book = Book.new("Americanah", "Chimamanda Adichie", "20/04/2010")

book.checked_books
=> "This book is checked: Americanah, Chimamanda Adichie, 20/04/2010"

book.check_this_book
=> "private method `check_this_book' called for #<Book:0x00007fdb7f059b98> (NoMethodError)"
