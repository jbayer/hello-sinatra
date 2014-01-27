require 'rubygems'
require 'sinatra'

get '/' do
  host = ENV['VCAP_APP_HOST']
  port = ENV['VCAP_APP_PORT']
  msg = "<h1>Hello from VCAP! via: #{host}:#{port}</h1>"
  puts msg
  msg
end

get '/crash/:id' do
  Process.kill(9, params[:id].to_i)
end
