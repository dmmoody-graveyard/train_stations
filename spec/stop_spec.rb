require('rspec')
require('stop')

describe(Stop) do

  describe('#train_id') do
    it('takes a train_id a returns the value') do
      stop = Stop.new({:train_id => nil, :station_id => nil, :id => 1})
      expect(stop.train_id()).to(be_an_instance_of(Fixnum))
    end
  end

end
