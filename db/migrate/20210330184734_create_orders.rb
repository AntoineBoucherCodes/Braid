class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :open, default: true
      t.boolean :group
      t.boolean :cart, default: true

      t.timestamps
    end
  end
end
