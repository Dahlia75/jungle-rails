class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["user_name"], password: ENV["password"], except: :index
  def show
  end
end
