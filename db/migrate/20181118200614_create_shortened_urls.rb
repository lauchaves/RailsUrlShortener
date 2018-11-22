class CreateShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.text :original_url
      t.string :short_url
      t.string :sanitize_url
      t.integer :clicks, :null => false, :default => 0 
      t.string :title
      t.timestamps
    end
  end
end
