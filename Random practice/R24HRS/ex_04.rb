class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end
end



book = BookInStock.new("isbn1", 12.34)
puts "ISBN    = #{book.isbn}"
puts "Price   = #{book.price}"
book.price = book.price * 0.75
puts "New Price   = #{book.price}"
