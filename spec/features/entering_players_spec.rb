#

feature "Enter player names" do
  scenario "Player enters their name" do
    sign_in_and_play
    expect(page).to have_text("Lewis is Player 1 and Dave is Player 2")
  end
end

feature "View hitpoints" do
  scenario "Can see Player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_text 'Dave: 100 Hitpoints'

  end
end
