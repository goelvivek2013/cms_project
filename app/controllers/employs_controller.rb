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

  private

    def employ_params
      params.require(:employ).permit(:first_name, :last_name, :role, :contact, :address ,:user_attributes => [:email , :password , :password_confirmation])
    end
end
