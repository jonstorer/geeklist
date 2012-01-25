require 'test_helper'

class TestClient < Test::Unit::TestCase
  context "creating a client" do
    setup do
      @client = Geeklist::Client.new('consumer_key')
    end
    should "initialize with a consumer key" do
      assert_equal "consumer_key", @client.instance_variable_get("@consumer_key")
    end
  end
  context "with a valid client" do
    setup do
      @client = Geeklist::Client.new('consumer_key')
    end
    context "#request_token" do
      setup do
        stub_get('http://api.geekli.st/oauth/request_token', {'oauth_token' => 'oauth_token', 'oauth_token_secret' => 'oauth_token_secret'})
      end
      should "return the request token" do
        request_token = @client.request_token('http://example.com/auth/callback')
        assert request_token.is_a?(OAuth::RequestToken)
      end
    end
  end
end
