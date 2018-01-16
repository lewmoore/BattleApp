
feature 'Testing homepage' do
  scenario 'Can run app and verify page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle!'
  end

end
