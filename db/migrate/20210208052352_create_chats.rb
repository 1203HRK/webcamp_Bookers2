class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.integer :chat_id
      t.text :chat

      t.timestamps
    end
  end
end
