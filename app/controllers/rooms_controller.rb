class RoomsController < ApplicationController
  protect_from_forgery
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:image, :room_name, :details, :price, :address))
    if @room.save
      flash[:notice] = "新規登録しました"
      redirect_to :rooms
    else
      render "new"
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destoroy
  end

end
