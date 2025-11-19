class AddNullFalseToReviews < ActiveRecord::Migration[7.1]
  def change
    # change_column_null(table_name, column_name, null, default = nil)
    # A review must have a content.
    # A review must have a rating.
    change_column_null(:reviews, :content, false)
    change_column_null(:reviews, :rating, false)
  end
end
