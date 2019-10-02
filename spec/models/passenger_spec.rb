require 'spec_helper'

describe Passenger do
  let(:passenger) { subject }

  it 'has many taxis through rides' do
    passenger = Passenger.create
    taxi = Taxi.create

    passenger.taxis << taxi
    passenger.save

    expect(taxi.passengers).to include(passenger)
  end

  it 'has many rides' do
    passenger = Passenger.create
    ride = Ride.create

    passenger.rides << ride
    passenger.save

    expect(ride.passenger).to eq(passenger)
  end
end
