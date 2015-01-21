class Station

  attr_reader(:station_name)

  define_method(:initialize) do |attributes|
    @station_name = attributes.fetch(:station_name)
  end

  
end
