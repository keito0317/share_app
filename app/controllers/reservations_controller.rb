class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:check_in, :check_out, :person))
     if @reservation.save
        flash[:success] = "予約しました"
       redirect_to :reservations
      else
        flash.now[:failure] = "予約できませんでした"
       render "new"
     end
   end

  def show
    @reservation =Reservation.find(params[:id])
  end

 
