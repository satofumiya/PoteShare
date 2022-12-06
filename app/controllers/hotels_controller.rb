class HotelsController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        @hotels = @user.hotels
    end

    def new
        @user = current_user
        @hotel = Hotel.new
    end

    def create
        @user = current_user
        @hotel = Hotel.new(params.require(:hotel).permit(:name, :hotel_introduction, :price, :address,:user_id,:hotel_image))
        if @hotel.save
            flash[:notice] = "ルームの登録ができました。"
            redirect_to root_path
        else
            render :new
        end
    end
end
