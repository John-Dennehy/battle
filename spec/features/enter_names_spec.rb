
feature 'Homepage' do
  scenario 'Players are prompted to enter names' do
    visit('/')
    expect(page).to have_text("Champions - Submit your names:")
  end

  scenario 'Players can type and submit their names' do
    sign_in
    expect(page).to have_content 'Bill -vs- Ted'
  end
  
end
