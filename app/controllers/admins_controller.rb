class AdminsController < ApplicationController
  def index
    @employs = Employ.all
  end

  def assign_employ
  	@employ = Employ.find(params[:employ])
    #@array = AdminsHelper.get_employ(params[:employ]) 
    @employees = if @employ.role == 'developer'
                   Teamlead.all
                 elsif @employ.role == 'teamlead'
                   Apm.all
                 else 
    	           [0,1]
                 end
   redirect_to :controller => 'employs', :action => 'edit', :id => params[:employ] 
  end
end
