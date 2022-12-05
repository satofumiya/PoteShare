class SearchesController < ApplicationController
    def index
        @user = current_user
        @hotels = Hotel.looks(params[:word], params[:column])
    end
end
