class AakashesController < ApplicationController


  def index
    @list = Aakash.all.as_json
    render json: @list
  end

end
