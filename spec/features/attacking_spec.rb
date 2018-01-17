feature 'Attacking' do

  scenario "You attack player 2" do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_text "Lewis has attacked Dave!"
  end
end
