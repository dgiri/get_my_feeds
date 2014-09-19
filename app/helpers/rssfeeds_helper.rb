module RssfeedsHelper
	require 'rss'
	require 'open-uri'

	def rssitem_html_view(item)
		subitems = []
		open(item.url) do |rss|
			feed = RSS::Parser.parse(rss)
			title = feed.channel.title
			feed.items.each do |item|
				subitems << item
			end
		end
		return title,subitems
	end
end
