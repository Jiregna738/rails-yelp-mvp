class RemoveColumnFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :rating, :text
  end
end
