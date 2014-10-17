class AdminController < ApplicationController

  def index
    @employ = Employ.all
  end

  
end
