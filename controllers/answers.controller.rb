post "/posts/:id/reply" do
	Answer.create(reply: params[:reply], question_id: params[:id], user_id: current_user.id)
	redirect back
end

put "/posts/:id/reply/:reply_id" do
	reply = Answer.find(params[:reply_id])
	reply.update(reply: params[:replyNew])
	redirect back
end

delete "/posts/:id/reply/:reply_id/delete" do
	reply = Answer.find(params[:reply_id])
	reply.delete
	redirect back
end

post "/posts/:id/reply/:reply_id/vote" do
	x = Answervote.create(user_id: current_user.id, answer_id: params[:reply_id])
	redirect back
end

delete "/posts/:id/reply/:reply_id/vote/delete" do
	x = Answervote.find_by(user_id: current_user.id)
	x.delete
	redirect back
end