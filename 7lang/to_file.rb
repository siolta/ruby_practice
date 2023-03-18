# ruby modules are collections of funcs + constants
# when included as part of a class, those become part of that class

module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end
  # write output of to_s to file
  # note to_s is implemented in class, not module
  def to_f
    File.open(filename, 'w') {|f| f.write(to_s)}
  end
end

module SayHi
  def hi
    puts "hii"
  end
end

class Person
  # add the capability to add to a file via module
  include ToFile
  include SayHi
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  def to_s
    name
  end
end

matz = Person.new('matz')
matz.to_f
matz.hi

