class StoreController < ApplicationController
  def index
  @apps = App.order(:name)
  end
end
