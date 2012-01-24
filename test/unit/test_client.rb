require 'test_helper'

class TestClient < Test::Unit::TestCase
  context "creating a client" do
    setup do
      @client = Geeklist::Client.new('consumer_key', 'consumer_secret')
    end
    should "initialize with a consumer key" do
      assert_equal "consumer_key", @client.instance_variable_get("@consumer_key")
    end
    should "initialize with a consumer secret" do
      assert_equal "consumer_secret", @client.instance_variable_get("@consumer_secret")
    end
  end
  context "with a valid client" do
    setup do
      @client = Geeklist::Client.new('consumer_key', 'consumer_secret')
    end
    should "return a request token" do
      puts @client.request_token
    end
  end
end
