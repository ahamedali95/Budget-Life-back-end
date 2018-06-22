class Api::V1::TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all.sort_by{|recent| recent.date}
    render json: @transactions
  end

  def create
     # byebug
    @transaction = Transaction.new(get_params)

    if @transaction.valid?
     @transaction.save
     render json: @transaction
    else
      render json: {error: "something went wrong!"}
    end
  end

  private

  def get_params
    params.require(:transaction).permit(:amount, :date, :description, :transaction_type, :user_id, :category_id)
  end
end
