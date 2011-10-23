require 'teststrap'

context "Scribble Squad" do
  
  context "Config" do
      context "default" do
        asserts("url") { Passenger.config.url}.equals "http://passengers.dev/emails"        
      end
      
      
      context "next" do
        setup do
          Passenger.config do |c|
            c.enviroment "next"
          end
        end
        asserts("url") { Passenger.config.url}.equals "http://next.passengers.scribblesquad.com/emails"        
      end
      
      context "live" do
        setup do
          Passenger.config do |c|
            c.enviroment "live"
          end
        end
        asserts("url") { Passenger.config.url}.equals "http://passengers.scribblesquad.com/emails"        
      end
  end
  
  context "Passenger" do
    asserts("Add") do
      Passenger::add "delaney.burke@me.com","127.0.0.1","cuunt"
    end
  end
  
end
