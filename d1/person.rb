class Person
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

end

p = Person.new('L. Ron')
p.name = "New Name"
puts p.name