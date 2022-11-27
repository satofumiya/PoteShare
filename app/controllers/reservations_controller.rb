class ReservationsController < ApplicationController
    def index
    end

    def new
        @user = current_user
        @hotel = Hotel.find_by(params[:id])
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(params.require(:reservation).permit(:start, :end, :NumberOfGuests,:user_id, :hotel_id))

    end

end
