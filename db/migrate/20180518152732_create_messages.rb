class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: :uuid do |t|
      t.string :user_to
      t.string :user_from
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
