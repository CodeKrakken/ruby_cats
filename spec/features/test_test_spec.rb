feature 'Testing Infrastructure' do
  scenario 'Can run app and see page content' do
    visit('/')
    expect(page).to have_content "Greetings my friend. Care for a cat?"
  end
end