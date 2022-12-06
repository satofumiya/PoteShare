class ReservationsController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        @reservations = @user.reservations
    end

    def new
        @user = current_user
        @hotel = Hotel.find(params[:id])
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @hotel = Hotel.find(@reservation.hotel_id)
        @user = User.find(@reservation.user_id)
        if params[:back] || !@reservation.save
            render :new and return
        else
            flash[:notice] = "ホテルの予約を完了しました。"
            redirect_to root_path
        end
    end

    def confirm
        @user = current_user
        @reservation = Reservation.new(reservation_params)
        @hotel = Hotel.find(@reservation.hotel_id)
        if @reservation.invalid?
          render :new
        end
    end
private
    def reservation_params
        params.require(:reservation).permit(:start, :end_day, :NumberOfGuests,:user_id, :hotel_id)
    end

end
