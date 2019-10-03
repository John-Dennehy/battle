feature "Can attack" do
  scenario "Player 1 attacks player 2 and receives a confirmation" do
    sign_in
    click_button "Attack"
    expect(page).to have_content "Bill attacked Ted"
  end
  scenario "Players hit points are reduced" do
    sign_in
    click_button "Attack"
    expect(page).to have_content "Ted: 50HP"
    expect(page).not_to have_content "Ted: 60HP"
  end
end