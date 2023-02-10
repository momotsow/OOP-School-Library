require_relative '../teacher'

describe Teacher do
  context 'testing teacher' do
    age = '24'
    name = 'khomotso'
    specialization = 'progamming'
    teacher = Teacher.new(age, name, specialization)

    it 'testing age' do
      expect(teacher.age).to eq age
    end
  end

  context 'testing serviece' do
    it 'services' do
      teacher = Teacher.new(24, 'khomotso', 'progamming')
      expect(teacher.can_use_services?).to eql true
    end
  end
end
