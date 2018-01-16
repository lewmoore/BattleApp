

feature "Enter player names" do
  scenario "Player enters their name" do
    visit "/new_player"
    fill_in :player_1, with: 'Lewis'
    fill_in :player_2, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_text("Lewis is Player 1 and Dave is Player 2")
  end
end
