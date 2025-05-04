class CreateVideoPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :video_payments do |t|
      t.references :video, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.index [:video_id, :payment_id], unique: true

      t.timestamps
    end
  end
end
