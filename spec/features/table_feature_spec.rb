require 'rails_helper'

feature 'the home page' do

	before do
    # Resort.create(resort_name: 'Courmayer', country: 'Italy', nearest_airport: 'Geneva', transfer_time: '1hr 30', size_of_ski_domain: '41', easy_runs_km: '16', medium_runs_km: '21', hard_runs_km: '4' )
    Resort.create(resort_name: 'Morzine', country: 'France', nearest_airport: 'Geneva', transfer_time: '1hr 30', size_of_ski_domain: '650', easy_runs_km: '331', medium_runs_km: '254', hard_runs_km: '65')

  end

  context 'displays a basic table' do

    scenario 'of the resorts in the database' do
      visit '/'
      expect(page).to have_content 'Morzine'
      expect(page).to have_selector 'table'
    end

    # scenario 'that are sortable by column' do
    #   visit '/'
    #   expect(page).to have_content 'Resort'
    #   expect(page).to have_selector 'table'
    # end

    scenario 'includes a visual breakdown of the ski slope difficulty' do
      visit '/'
      expect(page).to have_css('section#50-percent-easy-runs')
    end
  end
end