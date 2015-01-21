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
    returned_stations.each() do |station|
      name = station.fetch("name")
      stations.push(Station.new({:name => name}))
    end
    stations
  end

  define_method(:save) do
    @@stations.push(self)
  end

  define_method(:==) do |another_station|
    self.name().==(another_station.name()).&(self.id().==(another_station.id()))
  end

end
