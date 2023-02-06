require_relative 'book'

def list_books
    puts ''
    puts 'List of all the books in the library:'
    puts ''
    @books.each do |book|
      puts "Title: #{book.title}"
      puts "Author: #{book.author}"
    end
    run
  end