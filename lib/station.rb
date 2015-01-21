class Station
  @@stations = []

  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    returned_stations = DB.exec("SELECT * FROM station;")
    stations = []
    returned_trains.each() do |station|
      name = station.fetch("name")
      stations.push(Station.new({:name => name}))
    end
    stations
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO station (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()  end

  define_method(:==) do |another_station|
    self.name().==(another_station.name()).&(self.id().==(another_station.id()))
  end

end
