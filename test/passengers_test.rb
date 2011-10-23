require 'teststrap'

context "Scribble Squad" do
  
  context "Passenger" do
    asserts("Add") {Passenger::add "delaney.burke@me.com","127.0.0.1","cuunt"}
  end
  
end
