class PlayController < ApplicationController
  def play
    @tweet = random_real
    @faketweet = random_fake
  end


  def random_real
    Tweet.find(Random.rand(1..Tweet.count))
  end

  def random_fake
    #small_group_faketweets = Faketweet.random_records(100, strategy: 2)
    random_id = Faketweet.random_records(1)
    Faketweet.find(random_id.ids[0])
  end

end
