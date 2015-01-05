require 'rails_helper'

context 'resorts in the database' do
  before do
    Resort.create(resort: 'Courmayer', country: 'Italy', nearest_airport: 'Geneva', transfer_time: '1', size_of_ski_domain: '41' )
  end

  scenario 'display in the table' do
    visit '/'
    expect(page).to have_content('Courmayer')
  end
end