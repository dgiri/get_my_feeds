class FeedEntry < ActiveRecord::Base
  attr_accessible :content, :published_on, :title, :url
end
