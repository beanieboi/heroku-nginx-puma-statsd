class WelcomeController < ApplicationController
  def index
    statsd = Statsd.new
    statsd.increment 'visits'
  end
end
