
feature "View hitpoints" do
  scenario "Can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_text 'Dave: 100 Hitpoints'
  end

  scenario "Can see Player 1's hitpoints" do
    sign_in_and_play
    expect(page).to have_text 'Lewis: 100 Hitpoints'
  end
end
