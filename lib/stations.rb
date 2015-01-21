class Station

  attr_reader(:station_name, :station_id)

  define_method(:initialize) do |attributes|
    @station_name = attributes.fetch(:station_name)
    @station_id = attribues.fetch(:station_id)
  end

  define_singleton_method(:all) do
    returned_stations = DB.exec("SELECT * FROM stations;")
    stations = []
    returned_stations.each() do |station|
      station_name = station.fetch("station_name")
      station_id = station.fetch("station_id").to_i()
      stations.push(Station.new({:station_name => station_name, :station_id => station_id}))
    end
    stations
  end

  define_method(:save) do
    DB.exec("INSERT INTO stations (station_name, station_id) VALUES ('#{@station_name}', #{@station_id});")
  end

  define_method(:==) do |first_station|
binding.pry
    self.station_name().==(first_station.station_name.())
  end
end
