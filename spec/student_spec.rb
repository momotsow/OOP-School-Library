require_relative '../student'

describe Student do
  context 'testing student' do
    age = '22'
    name = 'Hevar'
    parent_permission = true
    student = Student.new(age, name, parent_permission)

    it 'test instance of student' do
      expect(student).to be_instance_of Student
    end

    it 'test student age' do
      expect(student.age).to eq age
    end

    it 'test play hooky' do
      expect(student.play_hooky).to eq '¯(ツ)/¯'
    end
  end
end
