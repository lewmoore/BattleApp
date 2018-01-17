
feature "View hitpoints" do
  scenario "Can see Player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_text 'Dave: 100 Hitpoints'
  end
end
