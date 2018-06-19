class Api::V1::BillsController < ApplicationController
  def index
    @bills = Bill.all
    render json: @bills
  end

  def create
    @bill = Bill.new(get_params)

    if @bill.valid?
     @bill.save
     render json: @bill
    else
      render json: {error: "something went wrong!"}
    end
  end

  private

  def get_params
    params.require(:bill).permit(:due_date, :due_amount, :name, :description, :user_id, :category_id)
  end
end
