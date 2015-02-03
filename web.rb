# notifyer.rb
require 'sinatra'
require 'pry'
require 'dotenv'
require 'hipchat'

# preload
Dotenv.load
require './application.rb'

get '/updated/:ticket' do
  message = "(chef) #{fun_hi} everyone! I've noticed ticket: #{params[:ticket]} was updated... #{fun_emoji}\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  client.send('Botwire', message, msg_params)
end
