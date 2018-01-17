
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
