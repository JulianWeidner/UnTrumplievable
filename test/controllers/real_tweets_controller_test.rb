require 'test_helper'

class RealTweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_tweet = real_tweets(:one)
  end

  test "should get index" do
    get real_tweets_url
    assert_response :success
  end

  test "should get new" do
    get new_real_tweet_url
    assert_response :success
  end

  test "should create real_tweet" do
    assert_difference('RealTweet.count') do
      post real_tweets_url, params: { real_tweet: {  } }
    end

    assert_redirected_to real_tweet_url(RealTweet.last)
  end

  test "should show real_tweet" do
    get real_tweet_url(@real_tweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_real_tweet_url(@real_tweet)
    assert_response :success
  end

  test "should update real_tweet" do
    patch real_tweet_url(@real_tweet), params: { real_tweet: {  } }
    assert_redirected_to real_tweet_url(@real_tweet)
  end

  test "should destroy real_tweet" do
    assert_difference('RealTweet.count', -1) do
      delete real_tweet_url(@real_tweet)
    end

    assert_redirected_to real_tweets_url
  end
end
