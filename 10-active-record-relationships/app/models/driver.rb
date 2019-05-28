class Driver < ActiveRecord::Base
  has_many :rides
  has_many :passengers, through: :rides
  # def rides
  #   Ride.all.select do |ride|
  #     ride.driver_id == self.id
  #   end
  # end
  #
  # def passengers
  #   self.rides.map do |ride|
  #     Passenger.find(ride.passenger_id)
  #   end
  # end
end
