require_relative './config/init.rb'

get '/' do
  "Hello world!"
  erb :"home"
end