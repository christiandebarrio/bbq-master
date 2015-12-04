class ApiController < ApplicationController
  before_action :get_barbecue

  def barbecue_json
    render json: @barbecue
  end

  def join
    if @barbecue.users << current_user
      render status: 201, json: current_user
    else
      render status: 404, json: {error: "Not possible to add user"}
    end

  end

  def get_barbecue
    @barbecue = Barbecue.find_by_id(params[:id])
  end
end
