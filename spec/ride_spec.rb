require 'rspec'
require './lib/person'
require './lib/ride'

RSpec.describe Ride do
  describe "Instantiation" do
    it 'exists' do
      millennium = Ride.new("Millennium Force", 5, 8)

      expect(millennium).to be_a Ride
    end

    it 'has attriubtes when instantiated' do
      millennium = Ride.new("Millennium Force", 5, 8)

      expect(millennium.name).to eq("Millennium Force")
      expect(millennium.cost).to eq(5)
      expect(millennium.intensity).to eq(8)
      expect(millennium.passengers).to eq([])
    end
    describe 'Methods' do
      before :each do
        @millennium = Ride.new("Millennium Force", 5, 8)
        @aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})
        @taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})
        @lauren = Person.new({"name" => "Lauren", "age" => 20, "intensity_max" => 8})
      end

      it 'can add passengers' do
        @millennium.add_passenger(@aurelia)
        @millennium.add_passenger(@taylor)
        @millennium.add_passenger(@lauren)

        expect(@millennium.add_passenger([@aurelia, @taylor, @lauren]))
      end

      it 'return percentage of adults as passengers' do
        @millennium.add_passenger(@aurelia)
        @millennium.add_passenger(@taylor)
        @millennium.add_passenger(@lauren)

        expect(@millennium.percentage_adults).to eq(67)
      end
    end
  end
end
