class ErrorsController < ApplicationController

  def show
    path = request.path[1..-1]
    status = params[:status].present? ? params[:status] : path

    logger.warn 'Error Controller Hit'
    logger.warn "Status: #{status}"

    respond_to do |format|
      format.html { render path, status: status }
      format.json { render json: {}, status: status }
    end
  end

end
