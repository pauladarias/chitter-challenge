feature 'View submit in homepage' do 
  scenario 'submit peep' do 
    visit('/')
    fill_in 'peep', with: 'Hi, how are you doing?'
    click_button('Submit')
    expect(page).to have_content('Hi, how are you doing?')    
  end 
end 