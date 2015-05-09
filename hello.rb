require 'sinatra'
require 'statsd'

get '/' do
  statsd = Statsd.new
  statsd.increment 'visits'
  "Hello World"
end

