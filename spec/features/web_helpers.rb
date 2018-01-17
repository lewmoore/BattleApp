
def sign_in_and_play
  visit('/new_player')
  fill_in :player_1_name, with: 'Lewis'
  fill_in :player_2_name, with: 'Dave'
  click_button 'Submit'
end
