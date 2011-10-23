require "rest-client"
require "passenger/config"

module Passenger
  class << self
    
    def config
      @config ||= Config.new
      if block_given?
        yield @config
      end
      @config
    end

    def reset_config
      @config = nil
    end

     def add(email,ip,tags)
        result = RestClient.post config.url , "email[address]" => email, "email[ip]" => ip, "source" => tags
      end
  end
end
