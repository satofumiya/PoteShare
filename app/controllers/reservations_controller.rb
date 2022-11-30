class ReservationsController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        @reservations = @user.reservations
    end

    def new
        @user = current_user
        @hotel = Hotel.find_by(params[:id])
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(params.require(:reservation).permit(:start, :end, :NumberOfGuests,:user_id, :hotel_id))
        if @reservation.save
            flash[:notice] = "予約を完了しました"
            redirect_to root_path
        else
            render root_path
        end
    end

end
