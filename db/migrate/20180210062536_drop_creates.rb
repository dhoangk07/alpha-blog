class DropCreates < ActiveRecord::Migration[5.1]
  def up
    drop_table :creates    
  end
end
