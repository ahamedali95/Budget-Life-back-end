class Api::V1::EventPlanningsController < ApplicationController
  def index
    @event_plannings = EventPlanning.all
    render json: @event_plannings
  end

  def create
    @event_planning = EventPlanning.new(get_params)

    if @event_planning.valid?
     @event_planning.save
     render json: @event_planning
    else
      render json: {error: "something went wrong!"}
    end
  end

  private

  def get_params
    params.require(:event_planning).permit(:date, :name, :current_savings, :goal_amount, :amount_needed, :user_id)
  end
end
