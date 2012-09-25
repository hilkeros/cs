class AddTeaserToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :teaser, :text
    add_column :posts, :publish_date, :datetime
  end
end
