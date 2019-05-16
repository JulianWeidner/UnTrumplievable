class FakerSessionsController < ApplicationController
  def new
    @faker = Faker.new
  end

  def create
    @faker = login(params[:email], params[:password])

    if @faker
      redirect_back_or_to(:fakers, notice: "Login Successful")
    else
      flash.now[:alert] = "Login Failed"
      render action: 'new'
    end 
  end

  def destroy
    logout
    redirect_to(:fakers, notice: "Logged out")
  end
end
