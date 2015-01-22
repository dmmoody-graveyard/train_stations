class Train

  attr_reader(:name)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
  end

  define_singleton_method(:all) do
    returned_trains = DB.exec("SELECT * FROM train;")
    trains = []
    returned_trains.each() do |train|
      name = train.fetch("name")
      trains.push(Train.new({:name => name}))
    end
    trains
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO train (name) VALUES ('#{@name}');")
  end

  define_method(:==) do |another_train|
    self.name().==(another_train.name)
  end
end
