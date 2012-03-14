class CreateNamers < ActiveRecord::Migration
  def change
    create_table :namers do |t|

      t.timestamps
    end
  end
end
