require 'test/unit'
require 'shoulda'
require 'mocha'
require 'fakeweb'
require 'ruby-debug'
require 'json'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'geeklist'

FakeWeb.allow_net_connect = false

def stub_get(path, json)
  response = { :body => json.to_json, :content_type => 'text/json' }
  FakeWeb.register_uri(:get, path, response)
end
