
def sign_in
  visit '/'
  fill_in :player_1, with: "Bill"
  fill_in :player_2, with: "Ted"
  click_button 'Submit'
end