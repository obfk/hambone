class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  http_basic_authenticate_with name: "foobar", password: "pivotaltracker-hambone-2016"

  def index
    @active_30 = Stat.active_30
    @active_60 = Stat.active_60
    @active_90 = Stat.active_90

    render 'index'
  end
end
