class Station

  attr_reader(:station_name)

  define_method(:initialize) do |attributes|
    @station_name = attributes.fetch(:station_name)
  end

  define_singleton_method(:all) do
    returned_stations = DB.exec("SELECT * FROM stations;")
    stations = []
    returned_stations.each() do |station|
      station_name = station.fetch("station_name")
      stations.push(Station.new({:station_name => station_name}))
    end
    stations
  end
end
