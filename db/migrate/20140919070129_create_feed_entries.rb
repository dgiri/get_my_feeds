class CreateFeedEntries < ActiveRecord::Migration
  def change
    create_table :feed_entries do |t|
      t.text :title
      t.text :content
      t.string :url
      t.datetime :published_on

      t.timestamps
    end
  end
end
