class Stop
  @@stops = []
  attr_reader(:train_id, :id, :station_id)

  define_method(:initialize) do |attributes|
    @train_id = attributes.fetch(:train_id)
    @id = attributes.fetch(:id)
    @station_id = attributes.fetch(:station_id)
  end

  define_singleton_method(:all) do
    @@stops
  end
  
end
