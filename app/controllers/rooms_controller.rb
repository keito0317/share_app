class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
    @comment = Comment.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:room_name, :details, :price, :address))
    if @room.save
      flash[:notice] = "新規登録しました"
      redirect_to :rooms
    else
      render "new"
    end
    @comment = Comment.create params.require(:comment).permit(:content, :image)
    redirect_to @room
  end

  def show
    @room = Room.find(params[:id])
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update params.require(:comment).permit(:content, :image) # POINT
    redirect_to @comment
  end

  def destoroy
  end

end
