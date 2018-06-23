get '/' do
  @name = "Bob Smith"
  erb :"home"
end