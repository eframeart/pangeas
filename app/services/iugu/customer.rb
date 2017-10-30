# frozen_string_literal: true

class Iugu
  class Customer
    attr_reader :api, :id

    def initialize(options)
      @api = options[:api]
      @id = nil
    end

    def create(params)
      response = api.post('/customers', body: params.to_json)
      @id = response.json['id']
    end
  end
end
