class FakersController < ApplicationController
  def index
    @fakers = Faker.new
  end

  def new
    @faker = Faker.new
  end

  def create
    @faker = Faker.new(faker_params)
    @faker.save
    redirect_back_or_to(login_path)
  
  end

  def destroy
    @faker = Faker.find(session[:current_user_id])
    @faker.destroy 
    redirect_to(root_path)
  end
 


  private 
  def faker_params
    params.require(:faker).permit(:email,:password, :password_confirmation)
  end 
end
