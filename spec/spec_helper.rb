require_relative "../lib/subreddit_scraper.rb"

RSpec.configure do |config|
  # some (optional) config here
  include SubredditScraper

  config.before(:each) do
    @user = User.new("cooljacob204")
    @subreddit = Subreddit.new("programmerhumor", "Not everybody understands the humor of programmers.")
    @post = Post.new("Meme", @subreddit, @user)
  end

  config.after(:each) do
    User.reset_all
    Post.reset_all
    Subreddit.reset_all
    Comment.reset_all
  end
end