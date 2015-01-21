class Stop
  @@stops = []
  attr_reader(:train_id, :id, :station_id)

  define_method(:initialize) do |attributes|
    @train_id = attributes.fetch(:train_id)
    @id = attributes.fetch(:id)
    @station_id = attributes.fetch(:station_id)
  end

  define_singleton_method(:all) do
    returned_stops = DB.exec("SELECT * FROM stop;")
    stops = []
    returned_stops.each() do |stop|
      id = stop.fetch("id").to_i()
      train_id = stop.fetch("train_id").to_i()
      station_id = stop.fetch("station_id").to_i
      stops.push(Stop.new({:train_id => train_id, :station_id => station_id, :id => ids}))
    end
    stops
  end

  define_method(:save) do
    @@stops.push(self)
  end

  define_singleton_method(:clear) do
    @@stops = []
  end

end
