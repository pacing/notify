class PropertiesController < ApplicationController

  def show
      @property = Property.find(params[:id])
  end

  def new
      @property = Property.new
  end

  def create
      @property = Property.new(params[:property])
      if @property.save
         render action: "show" 
      else
         render action: "new"
      end
  end

  def edit
      @property = Property.find(params[:id]) 
  end

  def update
      render controller: "notify" , action: "index"
  end
end
