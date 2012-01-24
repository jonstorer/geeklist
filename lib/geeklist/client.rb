require 'securerandom'

module Geeklist
  class Client
    def initialize(consumer_key, consumer_secret)
      @consumer_key    = consumer_key
      @consumer_secret = consumer_secret
    end

    def request_token
      consumer ||= ::OAuth::Consumer.new(
        @consumer_key,
        @consumer_secret,
        { :site => 'http://api.geekli.st/v1' }
      )
      consumer.get_request_token
    end

    private

    def nonce
      SecureRandom::hex(32)
    end

    def consumer

    end
  end
end
