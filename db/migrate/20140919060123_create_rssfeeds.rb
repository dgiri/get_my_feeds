class CreateRssfeeds < ActiveRecord::Migration
  def change
    create_table :rssfeeds do |t|
      t.string :url
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
