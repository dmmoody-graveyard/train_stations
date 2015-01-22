require('spec_helper')

describe(Stop) do

  describe('#train_id') do
    it('takes a train_id a returns the value') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      expect(stop.train_id()).to(eq(1))
    end
  end

  describe('#station_id') do
    it('takes a station_id and returns the value') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      expect(stop.station_id()).to(eq(1))
    end
  end

  describe('#id') do
    it('takes a stop id and returns the value') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      stop.save()
      expect(stop.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('.all') do
    it('shows empty array of all stops') do
      expect(Stop.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a stop to an array of stops') do
      test_stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      test_stop.save()
      expect(Stop.all()).to(eq([test_stop]))
    end
  end

  describe('.clear') do
    it('clears the list of stops array') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      stop.save()
      expect(Stop.clear()).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same stop if it has the same id number") do
      test_stop1 = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      test_stop2 = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      expect(test_stop1).to(eq(test_stop2))
    end
  end

  # describe(".find") do
  #   it("returns a list by its id number") do
  #     test_station1 = Stop.new({:name => 'fifth ave', :id => 1})
  #     test_station1.save()
  #     test_station2 = Stop.new({:name => 'fifth ave', :id => 1})
  #     test_station2.save()
  #     expect(Stop.find(test_station1.id())).to(eq(test_station1()))
  #   end
  # end
end
