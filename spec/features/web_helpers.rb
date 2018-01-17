
def sign_in_and_play
  visit('/new_player')
  fill_in :player_1, with: 'Lewis'
  fill_in :player_2, with: 'Dave'
  click_button 'Submit'
end
