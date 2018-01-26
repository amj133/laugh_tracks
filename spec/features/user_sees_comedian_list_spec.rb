require 'pry'

describe "user sees list of comedians" do
  context "visit comedian index" do
    it "shows the dashboard" do
      visit '/comedians'

      expect(current_path).to eq('/comedians')
      expect(page).to have_content('Hannibal Buress')
    end
  end
end
