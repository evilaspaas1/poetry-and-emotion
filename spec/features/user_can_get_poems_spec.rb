require "rails_helper"

describe "as a user" do
  before :each do
    visit '/'
    fill_in :author,with: 'Emily'
    click_on 'Get Poems'
  end

  describe "when I visit root path and fill in the search form with \'Emily\' and click Get Poems" do
    it "then I should be on page /search" do
      expect(current_path).to eq('/search')
    end

    it "then I should see a list of the first 10 poems" do
      expect(page).to have_css('.poem', count: 10)
    end

    it "then I should see the tone or tones listed for each poem" do
      within(first('.poem')) do
        expect(page).to have_css('.tones')
        within('.tones') do
          expect(page).to have_xpath('//li')
          expect('//li').to_not be_empty
        end
      end
    end

    it "for each poem I should also see title, author, and the poem as a single string" do
      within(first('.poem')) do
        expect(page).to have_css('.title')
        expect(page).to have_css('.author')
        expect(page).to have_css('.text')
      end
    end
  end
end
