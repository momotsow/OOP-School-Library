require_relative '../book'
require_relative '../person'
require 'json'

def load_books
  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if File.empty?('./data/books.json')
      'Please add some books first if this is your fist time using our app'
    else
      books = JSON.parse(File.read('./data/books.json'))
      books.each do |book|
        book = Book.new(book['title'], book['author'])
        @books << book
      end
    end
    file.close
  else
    puts 'File empty. add new book.'
  end
  puts 'Available books:'
  @books.each { |b| puts "Book title: #{b.title}, Author: #{b.author}" } unless @books.empty?
end

def save_book(title, author)
  obj = {
    title: title,
    author: author
  }

  if File.exist?('./data/books.json')
    file = File.open('./data/books.json')

    if file.empty?
      book = [obj]
    else
      book = JSON.parse(File.read('./data/books.json'))
      book << obj
    end

    file.close

    myfile = File.open('./data/books.json', 'w')
    myfile.write(JSON.pretty_generate(book))
    myfile.close

  else
    puts 'File empty. add new book.'
  end
end

def load_rentals
  if File.exist?('./data/rentals.json')
    file = File.open('./data/rentals.json')

    if File.empty?('./data/rentals.json')
      puts 'Please add reseve some books first'
    else
      rentals = JSON.parse(File.read('./data/rentals.json'))
      puts 'Reserved books: '
      rentals.each do |rental|
        puts "Name: #{rental['person']}, Book: #{rental['book']} on: #{rental['date']}"
      end
    end
    file.close
  else
    puts 'No reservations found, please reseve some books first'
  end
end

def save_rental(date, book, person)
  obj = {
    date: date,
    person: person.name,
    book: book.title
  }

  if File.exist?('./data/rentals.json')
    file = File.open('./data/rentals.json')

    if file.empty?
      rental = [obj]
    else
      rental = JSON.parse(File.read('./data/rentals.json'))
      rental << obj
    end

    file.close

    myfile = File.open('./data/rentals.json', 'w')
    myfile.write(JSON.pretty_generate(rental))
    myfile.close

  else
    puts 'no file'
  end
end

def load_people
  if File.exist?('./data/people.json')
    file = File.open('./data/people.json')

    if File.empty?('./data/people.json')
      puts 'Please add people'
    else
      people = JSON.parse(File.read('./data/people.json'))
      puts 'add people: '
      people.each do |p|
        puts "Book: #{p['name']} on: #{p['age']}"
      end
    end
    file.close
  else
    puts 'No people found, please add some people first'
  end
end

def save_person
  obj = {
    date: date,
    person: person.name,
    book: book.title
  }

  if File.exist?('./data/people.json')
    file = File.open('./data/people.json')

    if file.empty?
      rental = [obj]
    else
      rental = JSON.parse(File.read('./data/people.json'))
      rental << obj
    end

    file.close

    myfile = File.open('./data/people.json', 'w')
    myfile.write(JSON.pretty_generate(rental))
    myfile.close

  else
    puts 'no file'
  end
end
