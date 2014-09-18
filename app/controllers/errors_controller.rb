class ErrorsController < ApplicationController

  def show
    @exception = env['action_dispatch.exception']
    @error_status = request.path[1..-1]

    @error_message = "Error #{@error_status}"
    @error_message = @exception.message if @exception

    logger.warn 'Error Controller Hit'
    logger.warn "Status: #{@error_status} Message: #{@error_message}"

    respond_to do |format|
      format.html { render action: @error_status, status: @error_status }
      format.json { render json: {}, status: @error_status }
    end
  end

end
