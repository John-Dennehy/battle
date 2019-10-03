feature "View hit points" do
  scenario "view player 2's hit point value" do
    sign_in
    expect(page).to have_content 'Ted: 60HP'
  end
end