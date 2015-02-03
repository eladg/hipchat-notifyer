# notifyer.rb
require 'sinatra'
require 'pry'
require 'dotenv'
require 'hipchat'
require 'jira'

# preload
Dotenv.load
$: << File.expand_path(File.dirname(__FILE__))
require 'application.rb'
require 'modules/hipchat.rb'
require 'modules/jira.rb'

post '/updated/:ticket' do
  display_name = Jira.user_display_name(params[:user_id])
  message = "(chef): I've noticed ticket: #{params[:ticket]} was updated by #{display_name}... #{fun_emoji}\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  Notifyer::hipchat.send(sender, message, Hipchat::update_message_params)
end

post '/created/:ticket' do
  display_name = Jira.user_display_name(params[:user_id])
  message = "(chef): #{worried_prase}... #{display_name} created new ticket (areyoukiddingme)\nCheck it out: https://stringwire.atlassian.net/browse/#{params[:ticket]}"
  Notifyer::hipchat.send(sender, message, Hipchat::create_message_params)
end

post '/closed/:ticket' do
  display_name = Jira.user_display_name(params[:user_id])
  message = "(chef): #{display_name} has closed ticket #{params[:ticket]} #{fun_emoji}#{fun_emoji}#{fun_emoji}!! #{yay_prase}!"
  Notifyer::hipchat.send(sender, message, Hipchat::closed_message_params)
end