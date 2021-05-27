# Persons and Rides Prework
## Iteration 1
Use TDD to create a `Person` class that responds to the following interaction pattern. For the `adult?` method, a `Person` is considered an adult if they are age 18 or older.
pry(main)> require './lib/person'
# => true
pry(main)> aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})    
# => #<Person:0x00007fc1ad88b3c0...>
pry(main)> taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})    
# => #<Person:0x00007fe0da2cf1b0...>
pry(main)> aurelia.name
# => "Aurelia"
pry(main)> aurelia.age
# => 18
pry(main)> aurelia.intensity_max
# => 5
pry(main)> aurelia.adult?
# => true
pry(main)> taylor.adult?
# => false
pry(main)> aurelia.pep_talk
pry(main)> aurelia.intensity_max  
# => 6
## Iteration 2
Use TDD to create a `Ride` class that responds to the following interaction pattern:
pry(main)> require './lib/person'
# => true
pry(main)> require './lib/ride'
# => true
pry(main)> millennium = Ride.new("Millennium Force", 5, 8)
# => #<Ride:0x00007fe0da9c63d8...>
pry(main)> millennium.name
# => "Millennium Force"
pry(main)> millennium.cost
# => 5
pry(main)> millennium.intensity
# => 8
pry(main)> millennium.passengers
# => []
pry(main)> aurelia = Person.new({"name" => "Aurelia", "age" => 18, "intensity_max" => 5})    
# => #<Person:0x00007fc1ad88b3c0...>
pry(main)> taylor = Person.new({"name" => "Taylor", "age" => 12, "intensity_max" => 3})    
# => #<Person:0x00007fe0da2cf1b0...>
pry(main)> lauren = Person.new({"name" => "Lauren", "age" => 20, "intensity_max" => 8})    
# => #<Person:0x00007fe0da2730e0...>
pry(main)> millennium.add_passenger(aurelia)
pry(main)> millennium.add_passenger(taylor)
pry(main)> millennium.add_passenger(lauren)
pry(main)> millennium.passengers
# => [#<Person:0x00007fc1ad88b3c0...>, #<Person:0x00007fe0da2cf1b0...>, #<Person:0x00007fe0da2730e0...>]
pry(main)> millennium.percentage_adults
# => 67
