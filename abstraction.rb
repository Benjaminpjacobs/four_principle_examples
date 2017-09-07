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

john = Person.new('John', 'Smith', '18/05/1986')

john.who_am_i? #=> I am John Smith
john.how_old_am_i? #=> I am 31 years old
