require 'spec_helper'

describe Taxi do
  let(:taxi) { subject }

  it 'has many passengers through rides' do
    taxi = Taxi.create
    passenger = Passenger.create
    taxi.passengers << passenger
    taxi.save

    expect(passenger.taxis).to include(taxi)
  end

  it 'has many rides' do
    taxi = Taxi.create
    ride = Ride.create
    taxi.rides << ride
    taxi.save

    expect(ride.taxi).to eq(taxi)
  end
end
