# notifyer.rb
require 'sinatra'
require 'pry'
require 'dotenv'
require 'hipchat'

# preload
Dotenv.load
require './application.rb'

post '/updated/:ticket' do
  message = "(chef) > I've noticed ticket: #{params[:ticket]} was updated by #{params[:user_id]}... #{fun_emoji}\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  client.send(sender, message, update_msg_params)
end

post '/created/:ticket' do
  message = "(chef) > #{worried_prase}... #{params[:user_id]} created new ticket (areyoukiddingme)\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  client.send(sender, message, create_msg_params)
end

post '/closed/:ticket' do
  message = "(chef) > #{params[:user_id]} has closed ticket #{params[:ticket]} #{fun_emoji}#{fun_emoji}#{fun_emoji}!! yay!\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  client.send(sender, message, closed_msg_params)
end