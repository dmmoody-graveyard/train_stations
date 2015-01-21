require('rspec')
require('stop')

describe(Stop) do

  before() do
    Stop.clear()
  end

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
    it("saves a stop to an array of stops") do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      stop.save()
      expect(Stop.all()).to(eq([stop]))
    end
  end

  describe('.clear') do
    it('clears the list of stops array') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      stop.save()
      expect(Stop.clear()).to(eq([]))
    end
  end
end
