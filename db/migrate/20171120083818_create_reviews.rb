class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
		t.string :review_description
		t.integer :user_id
		t.integer :question_id

	    t.timestamps
    end
  end
end
