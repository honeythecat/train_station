require('spec_helper')

describe(Station) do

  describe(".all") do
    it("starts out empty, will contain all stations") do
      test_station = Station.new({:station_name => "Crabby Complex"})
      expect(test_station.all()).to(ex([]))
    end
  end
end
