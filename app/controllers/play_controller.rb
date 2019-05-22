class PlayController < ApplicationController
  def play
  
  end


  def random_real
    Tweet.find(Random.rand(1..Tweet.count))
  end
end
