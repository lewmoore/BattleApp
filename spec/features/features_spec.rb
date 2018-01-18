
feature 'Testing homepage' do
  scenario 'Can run app and verify page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end
end

feature "Enter player names" do
  scenario "Player enters their name" do
    sign_in_and_play
    expect(page).to have_text("Lewis is Player 1 and Dave is Player 2")
  end
end

feature 'switch turns' do
  context 'see current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Lewis's turn"
    end

    scenario 'after first player attacks' do
      sign_in_and_play
      click_button 'Attack!'
      click_button 'Continue!'
      expect(page).to have_content "Dave's turn"
    end
  end
end

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

feature "Multiplayer Functionality" do
  scenario "Player 1 decreases player 2's HP" do
    sign_in_and_play
    player_1_attack
    expect(page).to have_text 'Dave: 90 Hitpoints'
  end

  scenario "Player 2 decreases player 1's HP" do
    sign_in_and_play
    player_1_attack
    click_button "Attack!"
    click_button "Continue!"
    expect(page).to have_text "Lewis: 90 Hitpoints"
  end
end
