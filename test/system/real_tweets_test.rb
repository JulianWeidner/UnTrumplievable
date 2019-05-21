require "application_system_test_case"

class RealTweetsTest < ApplicationSystemTestCase
  setup do
    @real_tweet = real_tweets(:one)
  end

  test "visiting the index" do
    visit real_tweets_url
    assert_selector "h1", text: "Real Tweets"
  end

  test "creating a Real tweet" do
    visit real_tweets_url
    click_on "New Real Tweet"

    click_on "Create Real tweet"

    assert_text "Real tweet was successfully created"
    click_on "Back"
  end

  test "updating a Real tweet" do
    visit real_tweets_url
    click_on "Edit", match: :first

    click_on "Update Real tweet"

    assert_text "Real tweet was successfully updated"
    click_on "Back"
  end

  test "destroying a Real tweet" do
    visit real_tweets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real tweet was successfully destroyed"
  end
end
