class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|

      t.timestamps null: false
    end
  end
end
