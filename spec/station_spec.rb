require('rspec')
require('station')

describe(Station) do

  describe("#name") do
    it("returns the name of the station") do
      station = Station.new({:name => "fifth ave", :id => nil})
      expect(station.name()).to(eq("fifth ave"))
    end
  end

  describe(".all") do
    it('returns empty list of all station names') do
      station = Station.new({:name => 'fifth ave', :id => nil})
      expect(Station.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the station to an array of stations") do
      station = Station.new({:name => 'fifth ave', :id => nil})
      station.save()
      expect(Station.all()).to(eq([station]))
    end
  end

  describe("#id") do
    it("returns the id number of a station") do
      station = Station.new({:name => 'fifth ave', :id => 1})
      station.save()
      expect(station.id()).to(eq(1))
    end
  end

  describe("#==") do
    it('is the same station if it has the same name and id number') do
      test_station1 = Station.new({:name => 'fifth ave', :id => 1})
      test_station2 = Station.new({:name => 'fifth ave', :id => 1})
      expect(test_station1).to(eq(test_station2))
    end
  end
end
