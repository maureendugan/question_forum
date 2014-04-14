class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.text :answer

      t.timestamps
    end
  end
end
