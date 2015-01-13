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
    expect(current_path).to eq "/resorts/courmayer"
  end

  scenario 'the resort name displays in the URL of a resorts page' do
    visit '/'
    click_link 'Courmayer'
    expect(page).to have_content 'Courmayer'
    expect(current_path).to eq "/resorts/courmayer"
  end

  scenario 'the resort name displays without spaces in the URL of a resorts page' do
    Resort.create(resort_name: "Sauze d'Oulx", country: 'Italy', nearest_airport: 'Turin', transfer_time: '3hr', size_of_ski_domain: '51', id: 2 )
    visit '/'
    click_link "Sauze d'Oulx"
    expect(page).to have_content "Sauze d'Oulx" 
    expect(current_path).to eq "/resorts/sauze-d-oulx"
  end

end