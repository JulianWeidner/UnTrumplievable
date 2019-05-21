class FaketweetsController < ApplicationController
  def index
    @faketweets = Faketweet.new
    @faketweets.faker_id = session[:current_user_id]
  end

  def new
    @faketweet = Faketweet.new
    @faketweet.faker_id = session[:current_user_id]
  end

  def create
    @faketweet = Faketweet.new(faketweet_params)
    @faketweet.faker_id = session[:current_user_id]
    @faketweet.save 
    redirect_to faker_path(@faketweet.faker_id)
  end

  def destroy
  end



  def faketweet_params
    params.require(:faketweet).permit(:body, :tweet_time, :retweets, :favorites)
  end


end
