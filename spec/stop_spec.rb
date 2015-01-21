require('rspec')
require('stop')

describe(Stop) do

  describe('#train_id') do
    it('takes a train_id a returns the value') do
      stop = Stop.new({:train_id => 1, :station_id => 1, :id => nil})
      expect(stop.train_id()).to(eq(1))
    end
  end

end
