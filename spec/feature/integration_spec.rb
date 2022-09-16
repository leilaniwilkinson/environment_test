# location: spec/feature/integration_spec.rb
require 'rails_helper'

# book
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '4'
    fill_in 'Published date', with: '09/13/2022'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Percy Jackson')
    expect(page).to have_content('Rick Riordan')
    expect(page).to have_content('4')
    expect(page).to have_content('09/13/2022')
  end
end
