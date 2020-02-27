feature 'Testing Infrastructure' do

  before :each do
    visit('/')
  end

  scenario 'Can run app and see page content' do
    expect(page).to have_content "Greetings my friend. Care for a cat?"
  end

  scenario 'Can see Clearly button' do
    expect(page).to have_button "Clearly"
  end

  scenario 'Clicking Clearly button returns a cat picture' do
    click_button('Clearly')
    expect(page).to have_content "Another?"
  end
    
end