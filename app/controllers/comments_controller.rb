class CommentsController < ApplicationController
  def create
    tackle = Tackle.find(params[:tackle_id])
    comment = current_user.comments.new(body: params[:body])
    comment.tackle_id = tackle.id

    if comment.save
      flash[:success] = "コメントを投稿しました"
      redirect_to tackle_url(tackle), notice: ""
    else
      flash[:danger] = "コメントの投稿に失敗しました"
      redirect_to tackle_url(tackle)
    end
  end
end
