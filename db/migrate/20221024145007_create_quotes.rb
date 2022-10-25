class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :text_content
      t.integer :user_id
      t.integer :author_id
    end
  end
end
