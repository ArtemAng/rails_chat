class AddFieldsInRoom < ActiveRecord::Migration[7.0]
  def change
    change_table :rooms do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title, null: false, index: true
    end
  end
end
