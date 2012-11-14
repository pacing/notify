class NotifyController < ApplicationController

  def index
      @property = Property.all
  end

  def about
  end
end
