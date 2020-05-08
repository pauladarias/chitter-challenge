require 'peeps'

describe '.all' do 
  it 'returns a list of peeps' do 
    peeps = Peeps.all

    expect(peeps).to include "Hi, how are you doing?"
    expect(peeps).to include "Make banana bread amigos"
    expect(peeps).to include "Quit coding and go to the park"
  end 
end 