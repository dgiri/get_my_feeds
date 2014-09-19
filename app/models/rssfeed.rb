include RssfeedsHelper
class Rssfeed < ActiveRecord::Base
  attr_accessible :url, :user_id

  after_save :add_entries_inbg

  def add_entries_inbg
  	Rails.logger.info("*******************************#{first,second = rssitem_html_view(self)}*************************************")
  	
  end
  # handle_asynchronously :add_entries_inbg
end

# open("http://www.ruby-lang.org/en/feeds/news.rss") do |rss|
# 	feed = RSS::Parser.parse(rss)
# 	Rails.logger.info("********************************#{feed.inspect}************************************")
# end