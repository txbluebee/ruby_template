require('rspec')
require('prime_numbers')

describe('Fixnum#prime_numbers') do
  it("give array containing 2,3 if user enters 3") do
    expect(3.prime_numbers()).to(eq([2,3]))
  end

end
