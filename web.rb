# notifyer.rb
require 'sinatra'
require 'pry'
require 'dotenv'
require 'hipchat'

# preload
Dotenv.load
require './application.rb'

get '/updated/:ticket' do
  message = "(chef) #{fun_hi} #{fun_everyone}! I've noticed ticket: #{params[:ticket]} was updated by #{params[:user_id]}... #{fun_emoji}\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  client.send(sender, message, msg_params)
end
