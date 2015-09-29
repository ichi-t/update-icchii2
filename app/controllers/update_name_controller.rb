class UpdateNameController < ApplicationController
  def index
    render :text => "hello \n"
  end
  def create
    update = params.permit(:update_name, :status_id, :screen_name, :user_protected)
    UpdateTweet.create(update)

    # restclint.update_profile({:name => text})

    render :text => update
    # render :text => "hello"
  end
end
