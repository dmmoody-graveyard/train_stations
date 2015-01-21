class Train
  @@trains = []

  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
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
    result = DB.exec("INSERT INTO train (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  define_method(:==) do |another_train|
    self.name().==(another_train.name).&(self.id().==(another_train.id()))
  end
end
