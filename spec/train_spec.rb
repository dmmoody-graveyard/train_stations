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

  describe('.all') do
    it('returns an empty array of all the trains') do
      expect(Train.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a train line to an array of train lines") do
      train = Train.new({:name => 'blue line', :id => 1})
      train.save()
      expect(Train.all()).to(eq([train]))
    end
  end

  describe('#==') do
    it('is the same station if it has the same name and id number') do
      test_train1 = Train.new({:name => 'blue line', :id => 1})
      test_train2 = Train.new({:name => 'blue line', :id => 1})
      expect(test_train1).to(eq(test_train2))
    end
  end
end
