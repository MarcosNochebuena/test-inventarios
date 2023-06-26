class SalesController < ApplicationController
    load_and_authorize_resource
    def index
        @sales = Sale.all
    end

    def purchase
        @vehicle = Vehicle.find(params[:vehicle_id])
        price = @vehicle.price
        @sale = Sale.create(user_id: current_user.id, vehicle_id: @vehicle.id, price: @vehicle.price, date: Date.today)
        respond_to do |format|
            if @sale.save
              format.html { redirect_to vehicles_path, notice: "Buy." }
            else
              format.html { render :new, status: :unprocessable_entity }
            end
          end
    end
end
