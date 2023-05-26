class CreateGuestMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :guest_messages do |t|
      t.references :conversation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
