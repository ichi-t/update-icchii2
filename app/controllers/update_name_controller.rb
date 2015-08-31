class UpdateNameController < ApplicationController
  def index
    update = params.permit(:cpu, :mem,:server_id,:date)
    Servresource.create(update)
    render :text => "200 OK\n"
  end
end
