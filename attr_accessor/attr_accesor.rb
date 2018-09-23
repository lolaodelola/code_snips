class Book
  def initialize(name)
    @name = name
  end

  def name
    puts @name
  end
end

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end



book = Book.new("Test")
puts book.name
author = Author.new("Lola")
puts author.name
