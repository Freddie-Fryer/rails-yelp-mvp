class RemoveReviewIdFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :review_id
  end
end
