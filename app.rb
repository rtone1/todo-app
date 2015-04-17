require 'bundler'
Bundler.require()

#connection
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'my_todo_list'
)

#models
require './models/todo'

#routes

get '/' do
  erb :index
end

get '/api/todos' do
  content_type :json
  todo = Todo.all
  todo.to_json
end

get '/api/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id].to_i)
  todo.to_json
end

post '/api/todos' do
  content_type :json
  todo = Todo.create(params[:todo])
  todo.to_json
end

put '/api/todos' do
  content_type :json
  todo = Todo.create(params[:todo])
  todo.to_json
end

patch '/api/todos/:id' do
  content_type :json
  todo = Todo.find(params[:id].to_i)
  todo.update(params[:todo])
  todo.to_json
end

delete '/api/todos/:id' do
  content_type :json
  Todo.delete(params[:id].to_i)
  {message: 'Successfully Deleted'}.to_json
end
