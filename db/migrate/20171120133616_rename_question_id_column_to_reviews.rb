class RenameQuestionIdColumnToReviews < ActiveRecord::Migration[5.1]
  def change
  	rename_column :reviews, :question_id, :hotel_id
  end
end
