require 'test_helper'

class TestClient < Test::Unit::TestCase
  context "creating a client" do
    should "initialize with a consumer_key" do
      client = Geeklist::Client.new('consumer_key')
      assert_equal "consumer_key", client.instance_variable_get("@consumer_key")
    end
  end
end
