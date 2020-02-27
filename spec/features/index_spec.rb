feature 'Testing Infrastructure' do

  before :each do
    visit('/')
  end

  scenario 'Can run app and see page content' do
    expect(page).to have_content "Greetings my friend. Care for a cat?"
  end
    
end