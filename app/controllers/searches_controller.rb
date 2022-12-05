class SearchesController < ApplicationController
    def index
        @user = current_user
        columnsList = params[:columns].split
        columnsList.each do |column|
            @hotels = Hotel.looks(params[:word], column)
            if @hotels != nil?
                break
            end
        end
    end
end
