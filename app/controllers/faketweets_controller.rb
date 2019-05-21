class FaketweetsController < ApplicationController
  def index
    @faketweets = Faketweet.new
    @faketweets.faker_id = session[:current_user_id]
  end

  def new
  end

  def create
  end

  def destroy
  end

end
