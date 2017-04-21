require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('prime_numbers', {:type => :feature}) do
  it('displays a list of prime numbers up to the number user inputted') do
    visit('/')
    fill_in('number', :with => 11)
    click_button('Show')
    expect(page).to have_content([2,3,5,7,11])
  end
end
