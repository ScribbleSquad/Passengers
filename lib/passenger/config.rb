module Passenger
  class Config
    def initialize
      @url='http://passengers.dev/emails'
    end
    attr_reader :url
      # Access the API in test mode
      def env(name)
        case name 
        when "next"
          @url = 'http://next.passengers.scribblesquad.com/emails'
        when "live"
          @url = 'http://passengers.scribblesquad.com/emails'  
        end        
      end
  end  
end