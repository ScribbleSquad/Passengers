require "rest-client"

module ScribbleSquad
  class Passenger
    def self.add(email,ip,tags)
      result = RestClient.post 'http://passengers.dev/emails', "email[address]" => email, "email[ip]" => ip, "source" => tags
    end
  end
end