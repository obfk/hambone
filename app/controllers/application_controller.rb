class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @active_date = Stat.active_date

    @active_30 = Stat.active_30
    @active_60 = Stat.active_60
    @active_90 = Stat.active_90

    render 'index'
  end
end
