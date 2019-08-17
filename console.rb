require_relative('./db/sql_runner')
require_relative('./models/ticket')
require_relative('./models/film')
require_relative('./models/customer')
require ('pry')

film1 = Film.new( { 'title' => 'Once Upon a Time in Hollywood', 'price' => 10 } )
film1.save
film2 = Film.new( { 'title' => 'The Lion King', 'price' => 8 } )
film2.save
film3 = Film.new( { 'title' => 'Midsommar', 'price' => 5 } )
film3.save

customer1 = Customer.new( { 'name' => 'Kurt', 'funds' =>  30} )
customer1.save
customer2 = Customer.new( { 'name' => 'Krist', 'funds' => 20 } )
customer2.save
customer3 = Customer.new( { 'name' => 'Dave', 'funds' => 40 } )
customer3.save

ticket1 = Ticket.new( { 'customer_id' => customer1.id, 'film_id' => film1.id } )
ticket1.save
ticket2 = Ticket.new( { 'customer_id' => customer2.id, 'film_id' => film2.id } )
ticket2.save
ticket3 = Ticket.new( { 'customer_id' => customer3.id, 'film_id' => film3.id } )
ticket3.save

binding.pry
nil
