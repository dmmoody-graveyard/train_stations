require('rspec')
require('train')

describe(Train) do

  describe('#name') do
    it("returns the name of the train line") do
      train = Train.new({:name => 'blue line', :id => 1})
      expect(train.name()).to(eq('blue line'))
    end
  end

  describe('#id') do
    it("returns the id number of a train line") do
      train = Train.new({:name => 'blue line', :id => 1})
      expect(train.id()).to(eq(1))
    end
  end
end
