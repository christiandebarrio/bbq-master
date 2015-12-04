class ApiController < ApplicationController

  def barbecue_json
    barbecue = Barbecue.find_by_id(params[:id])
    render json: barbecue
  end
end
