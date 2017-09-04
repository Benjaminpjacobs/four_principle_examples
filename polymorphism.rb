require 'date'

class Person
  def initialize(first_name, last_name, birthday)
    @first_name = first_name
    @last_name = last_name
    @birthday = Date.parse(birthday)
  end
  
  def who_am_i?
    "My name is #{first_name} #{last_name}"
  end
  
  def how_old_am_i?
    "I am #{age} years old"
  end
  
  private
    attr_reader :first_name, :last_name, :birthday
  
    def age
      Date.today.year - birthday.year
    end

end

class Child < Person
  def initialize(first_name, last_name, birthday, grade)
    super(first_name, last_name, birthday)
    @grade = grade
  end

  def what_grade_am_in?
    "I am in the #{grade} grade"
  end
  
  def who_am_i?
    "I'm #{first_name}, and I'm #{age} years old!"  
  end

  private
    attr_reader :grade

end


john = Person.new('John', 'Smith', '18/05/1986')
jane = Child.new('Jane', 'Smith', '01/01/2011', "1st")

puts jane.who_am_i? #=> "I'm Jane!"
puts john.who_am_i? #=> "My name is John Smith"
