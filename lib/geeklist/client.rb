module Geeklist
  class Client
    def initialize(consumer_key)
      @consumer_key = consumer_key
    end

    def request_token(callback_url)
      consumer.get_request_token(:oauth_callback => callback_url)
    end

    def consumer
      @consumer ||= ::OAuth::Consumer.new(key, secret, {
        :site               => 'http://api.geekli.st/v1',
        :request_token_path => '/oauth/request_token',
        #:scheme             => :query_string,
        :http_method        => :get
      })
    end

    def key
      @consumer_key
    end

    def secret
      @consumer_secret
    end
  end
end
