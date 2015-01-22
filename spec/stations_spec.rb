require('spec_helper')

describe(Station) do

  describe(".all") do
    it("starts out empty, will contain all stations") do
      expect(Station.all()).to(eq([]))
    end
  end

  describe("#station_name") do
    it("returns the station name") do
      test_station = Station.new({:station_name => "Kitty Junction", :line_id => 1})
      expect(test_station.station_name()).to(eq("Kitty Junction"))
    end
  end

  describe("#save") do
    it("saves a station name") do
      test_station = Station.new({:station_name => "Kitty Junction", :line_id => 1})
      test_station.save()
      expect(Station.all()).to(eq([test_station]))
    end
  end

  describe("#==") do
    it("is the same station if it has the same station name") do
      test_station1 = Station.new({:station_name => "Kitty Junction", :line_id => 1})
      test_station1.save()
      test_station2 = Station.new({:station_name => "Kitty Junction", :line_id => 1})
      test_station2.save()
      expect(test_station1).to(eq(test_station2))
    end
  end

  describe("#line_id") do
    it("returns the line ID") do
      test_station = Station.new({:station_name => "Kitty Junction", :line_id => 1})
      expect(test_station.line_id()).to(eq(1))
    end
  end


end
