require('rspec')
require('train')

describe(Train) do

  describe("#stations") do
    it("returns the name of the station") do
      station = Train.new({:station => "fifth ave" :id => nil})
      expect(station.fetch(:station)).to(eq("fifth ave"))
    end
  end
end
