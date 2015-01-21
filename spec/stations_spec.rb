require('spec_helper')

describe(Station) do

  describe(".all") do
    it("starts out empty, will contain all stations") do
      expect(Station.all()).to(eq([]))
    end
  end
end
