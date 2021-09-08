require './lib/renter'
require './lib/apartment'
require './lib/building'


RSpec.describe Building do

  it 'exists' do
    building = Building.new
    expect(building).to be_an_instance_of(Building)
  end

  xit 'has no units by default' do
    building = Building.new
    expect(building.units).to eq([])
  end

  xit 'can add units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    expect(building.units).to eq([unit1, unit2])
  end

  xit 'has no renters by default' do
    building = Building.new
    expect(building.renters).to eq([])
  end

  xit 'can add renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)
    expect(building.renters).to eq(["Aurora"])
    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)
    expect(building.renters).to eq(["Aurora", "Tim"])
  end

  xit 'can return the average rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    expect(building.average_rent).to eq 1099.5
  end
end
