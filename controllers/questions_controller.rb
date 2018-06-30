post "/posts/new" do
	Question.create(description: params[:question_ask], user_id: current_user.id)
	redirect back
end

get "/posts/:id" do
	@post_description = Question.find(params[:id]).description
	@post_when = Question.find(params[:id]).updated_at
	@post_user_id = Question.find(params[:id]).user_id
	@post_id = params[:id]
	erb :"post"
end

put "/posts/:id" do
	question = Question.find(params[:id])
	question.update(description: params[:question_ask])
	redirect back
end

delete "/posts/:id/delete" do
	question = Question.find(params[:id])
	question.delete
	redirect "/"
end

post "/posts/:id/vote" do
	x = Questionvote.create(user_id: current_user.id, question_id: params[:id])
	redirect back
end

delete "/posts/:id/vote/delete" do
	x = Questionvote.find_by(user_id: current_user.id)
	x.delete
	redirect back
end
	