class CreateAiMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :ai_messages do |t|
      t.references :conversation, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
