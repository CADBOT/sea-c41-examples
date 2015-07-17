require 'sinatra'
require 'json'

get '/' do
  x = {msg: 'success'}
  return x.to_json
  return 'hello'
end
