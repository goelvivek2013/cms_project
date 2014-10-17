class EmploysController < ApplicationController

  def index
    @employs = Employ.all
  end

  def new
    @employ = Employ.new
    @employ.build_user
  end

  def create
    @employ = Employ.new(employ_params)
    @employ.save
    redirect_to :controller => 'home', :action => 'index'
  end

  def edit
    @employ = Employ.find(params[:id])
    @employees = if @employ.role == 'developer'
                   Teamlead.all
                 elsif @employ.role == 'teamlead'
                   Apm.all
                 else 
                 [0,1]
                 end
  # render :json => params
  # return
  end

  def update
    # render :json => params
    # return
    @employ = Employ.find(params[:id])
    status = if @employ.role == 'developer'
               Teamlead.find(params[:employ][:status])
             elsif @employ.role == 'teamlead'
               Apm.find(params[:employ][:status])
             else 
               [0,1]
             end
    if @employ.update_attributes(params[:employ])
      # @employ.status = status.employ.first_name
     #  render :json => @employ
    #   return
     # flash[:notice] = 'Employ was successfully updated.'

      redirect_to(@employ)
    else
      render "edit"
    end
    render :json => @employ
    return
  end

  private

    def employ_params
      params.require(:employ).permit(:all)#:first_name, :last_name, :role, :contact,:status , :address ,:user_attributes => [:email , :password , :password_confirmation])
    end
end
