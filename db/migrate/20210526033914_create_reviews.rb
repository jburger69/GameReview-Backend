class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :content
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
