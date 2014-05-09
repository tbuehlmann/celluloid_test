require 'spec_helper'

describe Worker do
  describe '#process' do
    before(:each) { Movie.delete_all }
    
    it 'lives in another dimension :(' do
      Movie.create(name: 'Indiana Jones')

      expect(subject.process).to eq(1)
    end
  end
end
