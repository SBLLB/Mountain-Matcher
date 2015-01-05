require 'rails_helper'

context 'resorts in the database' do
  before do
    Resort.create(resort_name: 'Courmayer', country: 'Italy', nearest_airport: 'Geneva', transfer_time: '1', size_of_ski_domain: '41' )
  end

  scenario 'display in a table' do
    visit '/'
    expect(page).to have_content('Courmayer')
  end
end

context 'viewing resorts' do

  before do
    Resort.create(resort_name: 'Courmayer', country: 'Italy', nearest_airport: 'Geneva', transfer_time: '1', size_of_ski_domain: '41', id: 1 )
  end

  scenario 'lets a user view resort details' do
   visit '/'
   click_link 'Courmayer'
   expect(page).to have_content 'Courmayer'
   expect(current_path).to eq "/resorts/1-courmayer"
  end

  scenario 'the resort name displays in the URL of a resorts page' do
   visit '/'
   click_link 'Courmayer'
   expect(page).to have_content 'Courmayer'
   expect(current_path).to eq "/resorts/1-courmayer"
  end

end