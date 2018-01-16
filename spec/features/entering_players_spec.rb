feature 'Testing homepage' do
  scenario 'Can run app and verify page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end
end


feature "Enter player names" do
  scenario "Player enters their name" do
    visit "/new_player"
    fill_in :player1, with: 'Lewis'
    fill_in :player2, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_text("Lewis is Player 1 and Dave is Player 2")
  end
end
