
feature 'page is active' do
  scenario 'access "/" returns value' do
    visit("/")
    expect(page.status_code).to eq 200
  end
end


feature "fill name form and appear on screen" do
  scenario "submit 'Joe' as player1 and see on screen" do
    visit("/")
    fill_in :player1, with: 'Joe'
    fill_in :player2, with: 'Kalindi'
    click_button "Submit"
    expect(page).to have_content "Joe VS Kalindi"
  end
end

feature "View other players hit points" do
  scenario "View player 1 damage" do
    visit("/play")
    expect(page).to have_content "Player 1 Hit Points: 0"
  end
  scenario "View player 2 damage" do
    visit("/play")
    expect(page).to have_content "Player 2 Hit Points: 0"
  end
end
