require_relative '../person'
require_relative '../book'

describe Person do
  context 'testing people' do
    age = 22
    name = 'Hevar'
    parent_permission = true
    person = Person.new(age, name, parent_permission: parent_permission)
    person_two = Person.new(22, name, parent_permission: false)

    it 'test age' do
      expect(person.age).to eq age
    end

    it 'test perosn name' do
      expect(person.name).to eq name
    end

    it 'testing correct name' do
      correct_person = person.correct_name.capitalize
      expect(correct_person).to eql 'Hevar'
    end

    it 'testing services' do
      expect(person_two.can_use_services?).to be true
    end
  end
end
