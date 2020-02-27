feature 'Testing Infrastructure' do
  scenario 'Can run app and see page content' do
    visit('/')
    expect(page).to have_content "Hello World!"
  end
end