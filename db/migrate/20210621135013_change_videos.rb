class ChangeVideos < ActiveRecord::Migration[6.1]
  def change
    change_table :videos do |t|
      t.string :payment, null: false, default: '無料'
      t.string :genre1
      t.string :genre2
      t.remove :property
    end
  end
end
