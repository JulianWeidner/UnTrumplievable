class FakersController < ApplicationController
  def index
    @fakers = Faker.new
  end

  def new
    @faker = Faker.new
  end
 


  private 
  def faker_params
    params.require(:faker).permit(:email,:password, :password_confirmation)
  end 
end
