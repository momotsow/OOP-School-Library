require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

def list_rentals
  print 'ID of person: '
  id = gets.chomp.to_i
  rentals = @rentals.select { |rental| id == rental.person.id }

  rentals.each { |item| puts "Date: #{item.date},  Book #{item.book.title}, by #{item.book.author}" }
  run
end
