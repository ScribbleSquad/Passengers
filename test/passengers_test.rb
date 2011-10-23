require 'teststrap'

context "passengers" do
  
  context "Passenger" do
    asserts("Add") {ScribbleSquad::Passenger.add "delaney.burke@me.com","127.0.0.1","cuunt"}
  end
  
end
