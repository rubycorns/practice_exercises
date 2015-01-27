module FizzBuzz
  def self.calculate(input)
    fail ArgumentError unless input.is_a? Numeric
    if input % 15 == 0
      'Fizzbuzz'
    elsif input % 5 == 0
      'Buzz'
    elsif input % 3 == 0
      'Fizz'
    else
      input
    end
  end
end