driver1 = Driver.create(name: "Susan")
driver2 = Driver.create(name: "Greg")
driver3 = Driver.create(name: "Billy")


passenger1 = Passenger.create(name: "Gabby")
passenger2 = Passenger.create(name: "Steve")
passenger3 = Passenger.create(name: "Carrol")


Ride.create(driver_id: driver1.id, passenger_id: passenger1.id, distance: 30)
Ride.create(driver_id: driver3.id, passenger_id: passenger1.id, distance: 2)
Ride.create(driver_id: driver2.id, passenger_id: passenger2.id, distance: 150)
