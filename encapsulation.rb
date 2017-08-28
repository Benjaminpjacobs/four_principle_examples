require 'date'

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, birthday)
    @first_name = first_name
    @last_name = last_name
    @birthday = Date.parse(birthday)
  end

  def birthday
    @birthday.strftime('%B %d, %Y')
  end

end

john = Person.new('John', 'Smith', '18/05/1986')

john.first_name # => 'John'
john.last_name # => 'Smith'
john.birthday # => 'May 18, 1986'