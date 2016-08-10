class CreateUrlContents < ActiveRecord::Migration[5.0]
  def change
    create_table :url_contents do |t|
      t.string :content
      t.string :content_type
      t.integer :url_id

      t.timestamps
    end
  end
end
