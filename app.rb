require_relative './config/init.rb'

get '/' do
  @name = "Bob Smith"
  erb :"home"
end