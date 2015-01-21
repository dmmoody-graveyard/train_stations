require('rspec')
require('train')

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
end
