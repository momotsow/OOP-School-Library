require_relative 'person'

def list_people
  puts ''
  puts 'List of all people:'
  if @people.empty?
    puts 'No people added yet.'
    puts 'Please add people.'
  end
  @people.each do |person|
    puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end
  run
end
