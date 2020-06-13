class CreateNewsArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :news_articles do |t|
      t.string :title
      t.string :source
      t.string :author
      t.text :description
      t.string :url
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
