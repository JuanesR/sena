module Wrapper
  class Base

    #HOST = 'http://10.74.79.174'
    HOST = 'http://api-sena.herokuapp.com'

    def initialize(options = {})
      options.each do |key, val|
        self.send("#{key}=", val)
      end
    end

    def plurarized_resource
      to_s.downcase.pruralize
    end

    def self.all
      #new(get("#{to_s.downcase.pruralize}.json"))
      get("#{plurarized}.json")
    end

    def self.find(id)
      new(get("/#{to_s.downcase.plurarized}/#{id}.json"))
    end


    def self.get(url)
      HTTParty.get(HOST + url).parsed_response
    end

  end
end
