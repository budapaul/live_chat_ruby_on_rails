class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, index: true
      t.timestamps
    end
    add_foreign_key :messages, :users
  end
end
