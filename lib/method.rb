class Fixnum
  define_method(:prime_numbers) do
    number_range = (2..self)
    prime_array = []
    number_range.each() do |number|
      prime_array.push(number)
    end
    prime = 2
    until prime == self
      prime_array.delete_if{|number| number%prime==0 && number!= prime}
      prime += 1
    end
    prime_array
 end
end
