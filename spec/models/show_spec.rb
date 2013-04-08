require 'spec_helper'

describe Show do
  describe 'to_param' do
    it 'returns a slug after the id' do
      show = Show.new(id: 1, name: 'Sakurasou no Pet na Kanojo')
      show.to_param.should == "#{show.id}-sakurasou-no-pet-na-kanojo"
    end
  end
end
