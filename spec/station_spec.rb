require('spec_helper')


describe(Station) do

  describe("#name") do
    it("returns the name of the station") do
      station = Station.new({:name => "fifth ave", :id => nil})
      expect(station.name()).to(eq("fifth ave"))
    end
  end

  describe("#id") do
    it("returns the id number of a station") do
      station = Station.new({:name => 'fifth ave', :id => nil})
      station.save()
      expect(station.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe(".all") do
    it('returns empty list of all station names') do
      expect(Station.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the station to an array of stations") do
      test_station = Station.new({:name => 'fifth ave', :id => nil})
      test_station.save()
      expect(Station.all()).to(eq([test_station]))
    end
  end

  describe("#==") do
    it('is the same station if it has the same name') do
      test_station1 = Station.new({:name => 'fifth ave', :id => nil})
      test_station2 = Station.new({:name => 'fifth ave', :id => nil})
      expect(test_station1).to(eq(test_station2))
    end
  end
end
