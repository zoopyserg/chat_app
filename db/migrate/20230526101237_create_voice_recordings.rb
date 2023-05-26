class CreateVoiceRecordings < ActiveRecord::Migration[7.0]
  def change
    create_table :voice_recordings do |t|
      t.references :ai_message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
