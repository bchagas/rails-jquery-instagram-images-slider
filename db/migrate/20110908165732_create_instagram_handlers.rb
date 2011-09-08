class CreateInstagramHandlers < ActiveRecord::Migration
  def change
    create_table :instagram_handlers do |t|

      t.timestamps
    end
  end
end
