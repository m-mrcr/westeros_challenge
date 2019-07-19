require 'rails_helper'

feature 'search index' do
  # As a user
  describe 'as a user' do
    scenario 'I search for members by houses' do
      # VCR.use_cassette('visitor_search_by_city') do
        WebMock.disable!

        # When I visit "/"
        visit root_path

        # And I select "Greyjoy" from the dropdown
        find('#houseSelect').find(:xpath, 'Greyjoy').select_option

        # And I click on "Get Members"
        click_link "Get Members"

        # Then my path should be "/search" with "house=greyjoy" in the parameters
        expect(current_path).to eq("/search?house=greyjoy")

        # And I should see a message "7 Members"
        expect(page).to have_content("7 Members")

        # And I should see a list of the 7 members of House Greyjoy
        expect(page).to have_css(".member", 7)

        # And I should see a name and id for each member.
        within(first(".member")) do
          expect(page).to have_content("Name: ")
          expect(page).to have_content("ID: ")
        end

      # end
    end
  end
end
