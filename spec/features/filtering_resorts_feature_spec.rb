require 'rails_helper'

context 'The list of resorts' do
  # Created in this order to prevent to false positive test
  before do
    @sizes = ((1...10).to_a.shuffle)
    @sizes.each do |size| 
      Resort.create(size_of_ski_domain: size)
    end
  end

  scenario 'can be filtered by ski domain size' do
    visit '/'
    # select('Size of ski domain', :from => 'Resort_Filter')
    # click_button('Search')
    sizes = @sizes.sort
    all('tbody tr').each_with_index do |tr, i|
      expect(tr.find('td:nth-child(5)').text).to eq("#{sizes[i]} km")
    end
  end
end