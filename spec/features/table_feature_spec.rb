require 'rails_helper'

feature 'the home page' do
  context 'when a user is not signed in' do
    scenario 'a basic table of the resorts should display' do
      visit '/'
      expect(page).to have_content 'Resort'
      expect(page).to have_selector 'table'
    end
  end
end