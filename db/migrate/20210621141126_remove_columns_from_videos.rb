class RemoveColumnsFromVideos < ActiveRecord::Migration[6.1]
  def change
    change_table :videos do |t|
      t.remove :payment
      t.remove :genre1
      t.remove :genre2
    end
  end
end
