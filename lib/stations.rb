class Station

  attr_reader(:station_name, :line_id)

  define_method(:initialize) do |attributes|
    @station_name = attributes.fetch(:station_name)
    @line_id = attributes.fetch(:line_id)
  end

  define_singleton_method(:all) do
    returned_stations = DB.exec("SELECT * FROM stations;")
    stations = []
    returned_stations.each() do |station|
      station_name = station.fetch("station_name")
      line_id = station.fetch("line_id").to_i()
      stations.push(Station.new({:station_name => station_name, :line_id => line_id}))
    end
    stations
  end

  define_method(:save) do
    DB.exec("INSERT INTO stations (station_name) VALUES ('#{@station_name}');")
    @line_id = result.first().fetch("line_id").to_i()
  end

  define_method(:==) do |first_station|
    self.station_name().==(first_station.station_name.()).&(self.line_id().==(first_station.line_id()))
  end
end
