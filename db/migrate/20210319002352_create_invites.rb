class CreateInvites < ActiveRecord::Migration[6.0]
  def change
    create_table :invites do |t|
      t.string :status
      t.references :lobby, null: false, foreign_key: true
      t.timestamps
    end
  end
end
